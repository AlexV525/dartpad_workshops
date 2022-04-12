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

// TODO: Implement the `LazyIndexedStack` that forwards all arguments to an `IndexedStack` widget.
/// Using the [StatefulWidget] for further implementations.
class LazyIndexedStack extends StatefulWidget {
  const LazyIndexedStack({Key? key}) : super(key: key);

  /// Add all arguments here.

  @override
  _LazyIndexedStackState createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  @override
  Widget build(BuildContext context) {
    // Pass all arguments to an `IndexedStack`.
    return IndexedStack();
  }
}

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
