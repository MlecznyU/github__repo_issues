import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

class RepoListPage extends StatelessWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Find a repository'),
          BlocBuilder<RepoBloc, RepoState>(
            builder: (BuildContext context, RepoState state) {
              switch (state.stateType) {
                case StateType.initial:
                  return Expanded(child: Icon(Icons.eighteen_mp));
                case StateType.loading:
                  return Expanded(child: Icon(Icons.eighteen_mp));
                case StateType.loaded:
                  return Expanded(child: Icon(Icons.eighteen_mp));
                case StateType.error:
                  return Expanded(child: Icon(Icons.eighteen_mp));
              }
            },
          )
        ],
      ),
    );
  }
}
