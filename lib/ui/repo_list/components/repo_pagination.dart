import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/bloc_common.dart';

class RepoPagination extends StatelessWidget {
  const RepoPagination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoBloc, RepoState>(
      builder: (BuildContext context, RepoState state) {
        if (state.numberOfPages == 1) return const SizedBox();
        return Column(
          children: [
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 16, right: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.numberOfPages,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) return const SizedBox();
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () => context.read<RepoBloc>().getRepositories(name: state.repoName, pageNumber: index),
                        child: Container(
                          width: 25,
                          height: 25,
                          color: Theme.of(context).cardColor,
                          child: Center(
                            child: Text(
                              '$index',
                              style: TextStyle(
                                color: index == state.currentPage ? Colors.white70 : Theme.of(context).disabledColor,
                                fontWeight: index == state.currentPage ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            if (state.stateType == StateType.error) const SizedBox(height: 45),
          ],
        );
      },
    );
  }
}
