import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/constants.dart';

final dioProvider = Provider((ref) => Dio(BaseOptions(baseUrl: baseURI)));
