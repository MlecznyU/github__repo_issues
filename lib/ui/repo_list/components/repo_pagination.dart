import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/common_widgets/common_pagination.dart';
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
            CommonPagination(
              currentPage: state.currentPage,
              numberOfPages: state.numberOfPages,
              onPagePressed: (index) =>
                  context.read<RepoBloc>().getRepositories(name: state.repoName, pageNumber: index),
            ),
            if (state.stateType == StateType.error) const SizedBox(height: 45),
          ],
        );
      },
    );
  }
}
