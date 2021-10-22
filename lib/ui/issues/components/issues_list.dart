import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_challenge_flutter/ui/common_widgets/empty_content.dart';
import 'package:tech_challenge_flutter/ui/issues/issue_bloc.dart';
import 'package:tech_challenge_flutter/ui/utils/bloc_common.dart';
import 'package:tech_challenge_flutter/ui/utils/ext_utils.dart';
import 'package:tech_challenge_flutter/ui/utils/show_error_scaffold.dart';

class IssuesList extends StatelessWidget {
  const IssuesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssueBloc, IssueState>(
      builder: (BuildContext context, IssueState state) {
        switch (state.stateType) {
          case StateType.initial:
            return const EmptyContent();
          case StateType.loading:
            return const Expanded(child: Center(child: CircularProgressIndicator(color: Colors.white)));
          case StateType.loaded:
            if (state.issuesList.isEmpty) {
              return const Expanded(
                child: Center(
                  child: Text(
                    'There are no open issues \nfor the selected repository',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              );
            }
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () => context.read<IssueBloc>().refreshList(),
                child: ListView.builder(
                  itemCount: state.issuesList.length,
                  itemBuilder: (context, index) {
                    final issue = state.issuesList[index];
                    String closedPart = '';

                    final createdAtFormatted = DateTime.now().difference(issue.createdAt).inDays;
                    if (!issue.open) {
                      closedPart = '\nClosed ${DateTime.now().difference(issue.closedAt!).inDays} days ago';
                    }

                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        border: Border(
                          top: BorderSide(color: Colors.white60, width: index == 0 ? 1 : 0),
                          bottom: const BorderSide(color: Colors.white60),
                        ),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 30,
                                child: Icon(
                                  issue.open ? Icons.circle_outlined : Icons.check_circle,
                                  color: issue.open ? Colors.green : Colors.red,
                                ),
                              ),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: context.screenWidth() * 0.8,
                                child: Text(
                                  state.issuesList[index].issueTitle,
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Text(
                              '#${issue.issueNumber} opened $createdAtFormatted days ago by ${issue.author} $closedPart',
                              style: TextStyle(fontSize: 12, color: Theme.of(context).disabledColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          case StateType.error:
            showErrorScaffold(
              context,
              () => context.read<IssueBloc>().getIssuesForPage(pageNumber: state.currentPage),
              'Cannot fetch repositories',
            );
            return const EmptyContent();
        }
      },
    );
  }
}
