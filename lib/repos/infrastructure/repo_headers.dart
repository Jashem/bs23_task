import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_headers.freezed.dart';
part 'repo_headers.g.dart';

@freezed
class RepoHeaders with _$RepoHeaders {
  const RepoHeaders._();
  const factory RepoHeaders({
    PaginationLink? link,
  }) = _RepoHeaders;

  factory RepoHeaders.parse(Response response) {
    final link = response.headers.map['Link']?[0];

    return RepoHeaders(
      link: link == null
          ? null
          : PaginationLink.parse(
              link.split(','),
              requestUrl: response.requestOptions.uri.toString(),
            ),
    );
  }

  factory RepoHeaders.fromJson(Map<String, dynamic> json) =>
      _$RepoHeadersFromJson(json);
}

@freezed
class PaginationLink with _$PaginationLink {
  const PaginationLink._();
  const factory PaginationLink({
    required int maxPage,
  }) = _PaginationLink;

  factory PaginationLink.parse(
    List<String> values, {
    required String requestUrl,
  }) {
    return PaginationLink(
      maxPage: _extractPageNumber(
        values.firstWhere(
          (e) => e.contains('rel="last"'),
          orElse: () => requestUrl,
        ),
      ),
    );
  }

  static int _extractPageNumber(String value) {
    final uriString = RegExp(
            r'[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)')
        .stringMatch(value);
    return int.parse(Uri.parse(uriString!).queryParameters['page']!);
  }

  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);
}
