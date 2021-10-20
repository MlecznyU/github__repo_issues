import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/config/di/di.dart';
import 'package:tech_challenge_flutter/ui/repo_list/components/content_card.dart';
import 'package:tech_challenge_flutter/ui/repo_list/components/repo_pagination.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/dismiss_keyboard.dart';

class RepoListPage extends StatelessWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoBloc>(
      create: (BuildContext context) => inject<RepoBloc>(),
      child: DismissKeyboard(
        child: SafeArea(
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 16),
                  child: Text('Repositories', style: TextStyle(fontSize: 22)),
                ),
                ContentCard(),
                RepoPagination()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
