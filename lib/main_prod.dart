import 'package:tech_challenge_flutter/config/api_config.dart';
import 'package:tech_challenge_flutter/main.dart';

Future<void> main() async {
  final apiConfig = ProdApiConfig();
  await runMain(apiConfig);
}
