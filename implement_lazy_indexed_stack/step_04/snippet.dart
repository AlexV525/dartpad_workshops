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

class LazyIndexedStack extends StatefulWidget {
  const LazyIndexedStack({
    Key? key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
    this.index = 0,
    this.children = const <Widget>[],
  }) : super(key: key);

  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit sizing;
  final int? index;
  final List<Widget> children;

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  late final List<bool> _activatedList = List<bool>.generate(
    widget.children.length,
    (int i) => i == widget.index,
  );

  @override
  void didUpdateWidget(LazyIndexedStack oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.index != widget.index) {
      _activateIndex(widget.index);
    }
  }

  // TODO: Implement the `_activateIndex` function to build children with their activated state.
  void _activateIndex(int? index) {}

  List<Widget> _buildChildren(BuildContext context) {
    return List<Widget>.generate(
      widget.children.length,
      (int i) {
        if (_activatedList[i]) {
          return widget.children[i];
        }
        return const SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
      index: widget.index,
      children: _buildChildren(context),
    );
  }
}
