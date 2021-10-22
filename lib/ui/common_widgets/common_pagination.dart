import 'dart:isolate';

import 'package:flutter/material.dart';

class CommonPagination extends StatefulWidget {
  final int numberOfPages;
  final Function(int index) onPagePressed;
  final int currentPage;

  const CommonPagination({
    Key? key,
    required this.numberOfPages,
    required this.onPagePressed,
    required this.currentPage,
  }) : super(key: key);

  @override
  State<CommonPagination> createState() => _CommonPaginationState();
}

class _CommonPaginationState extends State<CommonPagination> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.numberOfPages <= 1) return const SizedBox();

    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 16, right: 8),
        child: Row(
          children: [
            _SinglePage(
              onPagePressed: (index) async {
                await widget.onPagePressed(index);

                _jumpTo(_scrollController.position.minScrollExtent);
              },
              currentPage: widget.currentPage,
              index: 1,
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: widget.numberOfPages,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0 || index == 1 || index == widget.numberOfPages) return const SizedBox();
                  return _SinglePage(
                    onPagePressed: widget.onPagePressed,
                    currentPage: widget.currentPage,
                    index: index,
                  );
                },
              ),
            ),
            const SizedBox(width: 8),
            _SinglePage(
              onPagePressed: (index) async {
                await widget.onPagePressed(index);

                _jumpTo(_scrollController.position.maxScrollExtent);
              },
              currentPage: widget.currentPage,
              index: widget.numberOfPages,
            ),
          ],
        ),
      ),
    );
  }

  void _jumpTo(double position) {
    try {
      Isolate.spawn((_) => _scrollController.jumpTo(_scrollController.position.maxScrollExtent), null);
    } catch (e) {}
  }
}

class _SinglePage extends StatelessWidget {
  const _SinglePage({
    Key? key,
    required this.onPagePressed,
    required this.currentPage,
    required this.index,
  }) : super(key: key);

  final Function(int index) onPagePressed;
  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () => onPagePressed(index),
        child: Container(
          height: 30,
          width: 30,
          color: Theme.of(context).cardColor,
          child: Center(
            child: FittedBox(
              child: Text(
                '$index',
                style: TextStyle(
                  color: index == currentPage ? Colors.white70 : Theme.of(context).disabledColor,
                  fontWeight: index == currentPage ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
