import 'package:flutter/material.dart';

Widget buildLazyIndexedStack(BuildContext context) {
  // TODO: Implement the LazyIndexedStack to make it valid.
  return LazyIndexedStack(
    index: 0,
    alignment: Alignment.center,
    sizing: StackFit.expand,
    children: List<Widget>.generate(
      3,
      (int index) => Text(
        'Children index:\n'
        '${'$index' * (index + 1)}',
      ),
    ),
  );
}
