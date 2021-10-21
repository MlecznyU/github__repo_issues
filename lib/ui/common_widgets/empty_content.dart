import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({
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
