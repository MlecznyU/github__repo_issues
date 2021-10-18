import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_liat_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RepoListPage());
  }
}
