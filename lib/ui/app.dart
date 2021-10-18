import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/ui/search_repo/search_repo_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SearchRepoPage());
  }
}
