import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/config/di.dart';
import 'package:tech_challenge_flutter/ui/app.dart';

Future<void> runMain(ApiConfig apiConfig) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDI(apiConfig);
  runApp(const App());
}
