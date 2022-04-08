import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('LazyIndexedStack')),
        body: const Builder(builder: buildLazyIndexedStack),
      ),
    ),
  );
}

// TODO: Create a LazyIndexedStack widget that forwards all arguments to an
// IndexedStack widget.

// Reviewers note: I felt like these instructions were a little unclear and
// could use a little more prompting.

Widget buildLazyIndexedStack(BuildContext context) {
  return LazyIndexedStack(
    alignment: Alignment.center,
    sizing: StackFit.expand,
    index: 0,
    children: List<Widget>.generate(
      3,
      (int index) => Text(
        'Children index:\n'
        '${'$index' * (index + 1)}',
      ),
    ),
  );
}
