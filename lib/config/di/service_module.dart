import 'package:injectable/injectable.dart';
import 'package:tech_challenge_flutter/data/services_impl/default_orientation_service.dart';
import 'package:tech_challenge_flutter/domain/orientation_service.dart';

@module
abstract class ServiceModule {
  @LazySingleton(as: OrientationService)
  DefaultOrientationService get defaultOrientationService;
}
