import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/config/di/di.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

class RepoListPage extends StatelessWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoBloc>(
      create: (BuildContext context) => inject<RepoBloc>(),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0, left: 16),
                child: Text('Repositories', style: TextStyle(fontSize: 22)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      children: [
                        const SearchBar(),
                        BlocBuilder<RepoBloc, RepoState>(
                          builder: (BuildContext context, RepoState state) {
                            return Column(
                                // children: [],
                                );

                            // switch (state.stateType) {
                            //   case StateType.initial:
                            //     return Expanded(child: Icon(Icons.eighteen_mp));
                            //   case StateType.loading:
                            //     return Expanded(child: Icon(Icons.eighteen_mp));
                            //   case StateType.loaded:
                            //     return Expanded(child: Icon(Icons.eighteen_mp));
                            //   case StateType.error:
                            //     return Expanded(child: Icon(Icons.eighteen_mp));
                            // }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController()
      ..addListener(() {
        context.read<RepoBloc>().getRepositories(name: textController.text);
      });

    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Find a repository',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
