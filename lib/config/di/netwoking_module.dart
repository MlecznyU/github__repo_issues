import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkingModule {
  @lazySingleton
  Dio get dio => Dio()
    ..interceptors.addAll([
      if (!kReleaseMode) PrettyDioLogger(requestBody: true),
    ]);
}
