import 'package:dio/dio.dart';

import '../../core/infrastructure/api_call_wrapper.dart';
import '../../core/infrastructure/pagination_config.dart';
import '../../core/infrastructure/remote_response.dart';
import 'repo_headers.dart';
import 'repo_dto.dart';

class ReposRemoteService {
  final Dio _dio;

  ReposRemoteService(this._dio);

  Future<RemoteResponse<List<RepoDTO>>> getSearchedReposPage(
    String query,
    int page,
  ) async {
    return apiCallWrapper<List<RepoDTO>>(() async {
      final response = await _dio.get(
        '/search/repositories',
        queryParameters: {
          'q': query,
          'page': '$page',
          'per_page': PaginationConfig.itemsPerPage.toString(),
        },
      );
      final headers = RepoHeaders.parse(response);
      final convertedData = (response.data["items"] as List)
          .map((e) => RepoDTO.fromJson(e as Map<String, dynamic>))
          .toList();
      return RemoteResponse.withNewData(
        convertedData,
        maxPage: headers.link?.maxPage ?? 1,
      );
    });
  }
}
