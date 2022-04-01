import 'package:flutter/material.dart';

Widget buildLazyIndexedStack(BuildContext context) {
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

/// Using the [StatefulWidget] for further implementations.
class LazyIndexedStack extends StatefulWidget {
  const LazyIndexedStack({
    Key? key,
    required this.index,
    required this.children,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
  }) : super(key: key);

  final int index;
  final List<Widget> children;
  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit sizing;

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.index,
      children: widget.children,
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
    );
  }
}
