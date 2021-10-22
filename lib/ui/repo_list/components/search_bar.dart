import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tech_challenge_flutter/ui/repo_list/repo_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final TextEditingController textController;
  final _searchOnChange = BehaviorSubject<String>();

  @override
  void initState() {
    textController = TextEditingController()
      ..addListener(() {
        if (context.read<RepoBloc>().state.repoName != textController.text) {
          _searchOnChange.add(textController.text);
        }
      });

    _searchOnChange.debounceTime(const Duration(seconds: 1)).listen((String string) async {
      await context.read<RepoBloc>().getRepositories(name: textController.text, pageNumber: 1);
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
