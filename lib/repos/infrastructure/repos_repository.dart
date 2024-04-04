import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/fresh.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/repo.dart';
import 'extension.dart';
import 'repos_local_service.dart';
import 'repos_remote_service.dart';

class ReposRepository {
  final ReposRemoteService _remoteService;
  final ReposLocalService _localService;

  ReposRepository(this._remoteService, this._localService);

  Future<Either<Failure, Fresh<List<Repo>>>> getReposPage(
    String query,
    int page,
  ) async {
    try {
      final remotePageItems =
          await _remoteService.getSearchedReposPage(query, page);
      return right(
        await remotePageItems.when(
          noConnection: () async => Fresh.no(
            await _localService.getPage(query, page).then((_) => _.toDomain()),
            isNextPageAvailable:
                page < await _localService.getLocalPageCount(query),
          ),
          withNewData: (data, maxPage) async {
            await _localService.upsertPage(data, query, page);
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on AppException catch (e) {
      return left(Failure(code: e.errorCode, message: e.message));
    }
  }
}
