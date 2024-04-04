import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/constants.dart';
import '../infrastructure/sembast_database.dart';

final dioProvider = Provider((ref) => Dio(BaseOptions(baseUrl: baseURI)));

final sembastProvider = Provider((ref) => SembastDatabase());
