import 'dart:developer';

import 'package:dio/dio.dart';
import 'dio_extensions.dart';
import 'exceptions.dart';
import 'remote_response.dart';

Future<RemoteResponse<T>> apiCallWrapper<T>(
    Future<RemoteResponse<T>> Function() apiCall) async {
  try {
    return await apiCall();
  } on DioException catch (e) {
    log(e.toString());
    if (e.isNoConnectionError) {
      return const RemoteResponse.noConnection();
    } else if (e.response != null) {
      log((e.response?.data).toString());
      throw RestApiException(
        e.response?.statusCode,
        "Server Error",
      );
    } else {
      throw RestApiException(500, "Server Error");
    }
  } on FormatException catch (e, st) {
    log(e.toString());
    log(st.toString());
    throw JSONFormatException(1104, "JSON Parsing failed");
  }
}
