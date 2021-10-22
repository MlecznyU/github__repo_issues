import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/common_widgets/common_pagination.dart';
import 'package:tech_challenge_flutter/ui/issues/components/issues_list.dart';
import 'package:tech_challenge_flutter/ui/issues/issue_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/bloc_common.dart';

class IssuesPage extends StatelessWidget {
  const IssuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8, bottom: 12),
              child: Row(
                children: const [
                  BackButton(),
                  Text('Issues', style: TextStyle(fontSize: 22)),
                ],
              ),
            ),
            const IssuesList(),
            const SizedBox(height: 12),
            BlocBuilder<IssueBloc, IssueState>(
              builder: (BuildContext context, IssueState state) {
                ScaffoldMessenger.of(context).clearSnackBars();

                return Column(
                  children: [
                    CommonPagination(
                      numberOfPages: state.numberOfPages,
                      onPagePressed: (index) => context.read<IssueBloc>().getIssuesForPage(pageNumber: index),
                      currentPage: state.currentPage,
                    ),
                    if (state.stateType == StateType.error) const SizedBox(height: 40),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
