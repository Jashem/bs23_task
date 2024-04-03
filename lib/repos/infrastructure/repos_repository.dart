import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/fresh.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/repo.dart';
import 'extension.dart';
import 'repos_remote_service.dart';

class ReposRepository {
  final ReposRemoteService _remoteService;

  ReposRepository(this._remoteService);

  Future<Either<Failure, Fresh<List<Repo>>>> getReposPage(
    String query,
    int page,
  ) async {
    try {
      final remotePageItems =
          await _remoteService.getSearchedReposPage(query, page);
      return right(
        remotePageItems.maybeWhen(
          withNewData: (data, maxPage) => Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: page < maxPage,
          ),
          orElse: () => Fresh.no([], isNextPageAvailable: false),
        ),
      );
    } on AppException catch (e) {
      return left(Failure(code: e.errorCode, message: e.message));
    }
  }
}
