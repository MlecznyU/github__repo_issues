import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/config/di/di.dart';
import 'package:tech_challenge_flutter/ui/app.dart';

void runMain(ApiConfig apiConfig) {
  configureDI(apiConfig);
  runApp(const App());
}
