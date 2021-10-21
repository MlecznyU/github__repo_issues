import 'package:flutter/material.dart';
import 'package:tech_challenge_flutter/ui/issues/components/issues_list.dart';

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
          ],
        ),
      ),
    );
  }
}
