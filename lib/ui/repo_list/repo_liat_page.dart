import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/config/di/di.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/dismiss_keyboard.dart';
import 'package:tech_challenge_flutter/ui/utils/ext_utils.dart';
import 'package:tech_challenge_flutter/ui/utils/show_error_scaffold.dart';

class RepoListPage extends StatelessWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<RepoBloc>(
      create: (BuildContext context) => inject<RepoBloc>(),
      child: DismissKeyboard(
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
                        color: theme.cardColor,
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Column(
                        children: [
                          const SearchBar(),
                          BlocBuilder<RepoBloc, RepoState>(
                            builder: (BuildContext context, RepoState state) {
                              switch (state.stateType) {
                                case StateType.initial:
                                  return const SizedBox();
                                case StateType.loading:
                                  return CircularProgressIndicator();
                                case StateType.loaded:
                                  return Expanded(
                                    child: ListView.builder(
                                      itemCount: state.repoList.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
                                          child: Row(
                                            children: [
                                              ClipOval(
                                                child: SizedBox(
                                                  height: context.screenWidth() * 0.08,
                                                  child: Image.network(
                                                    state.repoList[index].ownerAvatar,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(state.repoList[index].ownerName,
                                                  style: const TextStyle(fontWeight: FontWeight.bold)),
                                              Text(' / ', style: TextStyle(color: theme.disabledColor)),
                                              Flexible(
                                                child: Text(
                                                  state.repoList[index].repoName,
                                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                case StateType.error:
                                  showErrorScaffold(
                                    context,
                                    () => context
                                        .read<RepoBloc>()
                                        .getRepositories(name: state.repoName, pageNumber: state.currentPage),
                                    'Cannot fetch repositories',
                                  );
                                  return const SizedBox();
                              }
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
      ..addListener(() async {
        await context.read<RepoBloc>().getRepositories(name: textController.text);
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
