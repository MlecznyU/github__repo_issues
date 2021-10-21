import 'package:flutter/material.dart';

class CommonPagination extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (numberOfPages <= 1) return const SizedBox();

    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 16, right: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numberOfPages,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) return const SizedBox();
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () => onPagePressed(index),
                child: Container(
                  height: 25,
                  width: 25,
                  color: Theme.of(context).cardColor,
                  child: Center(
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
            );
          },
        ),
      ),
    );
  }
}
