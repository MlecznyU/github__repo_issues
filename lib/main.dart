import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/config/di/di.dart';
import 'package:tech_challenge_flutter/domain/orientation_service.dart';
import 'package:tech_challenge_flutter/ui/app.dart';

Future<void> runMain(ApiConfig apiConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDI(apiConfig);

  await inject<OrientationService>().setOrientation([AppOrientation.portraitUp]);
  runApp(const App());
}
