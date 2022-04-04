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

Widget buildLazyIndexedStack(BuildContext context) {
  // TODO: Implement the LazyIndexedStack to make it valid.
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
