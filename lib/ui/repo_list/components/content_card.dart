import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/repo_list/components/search_bar.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/ext_utils.dart';
import 'package:tech_challenge_flutter/ui/utils/show_error_scaffold.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  ScaffoldMessenger.of(context).clearSnackBars();

                  switch (state.stateType) {
                    case StateType.initial:
                      return const _EmptyContent();
                    case StateType.loading:
                      return const Expanded(child: Center(child: CircularProgressIndicator(color: Colors.white)));
                    case StateType.loaded:
                      if (state.repoName.length < 4) return const SizedBox();
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
                                      child: Image.network(state.repoList[index].ownerAvatar),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    state.repoList[index].ownerName,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(' / ', style: TextStyle(color: Theme.of(context).disabledColor)),
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
                      return const _EmptyContent();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyContent extends StatelessWidget {
  const _EmptyContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SizedBox(width: 150, child: Image.asset('assets/github_logo.png', color: Colors.white60)),
      ),
    );
  }
}
