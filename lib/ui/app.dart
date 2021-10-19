import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_liat_page.dart';
import 'package:tech_challenge_flutter/ui/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme(),
      home: const RepoListPage(),
    );
  }
}
