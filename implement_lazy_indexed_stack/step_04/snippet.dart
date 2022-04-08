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

  // TODO: Implement the `_activateIndex` function to build children with their activated state.
  void _activateIndex(int? index) {}

  List<Widget> _buildChildren(BuildContext context) {
    return <Widget>[
      for (int i = 0; i < widget.children.length; i++)
        if (_activatedList[i] == true)
          widget.children[i]
        else
          const SizedBox.shrink(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // Why is this being updated in the build method? This code should be in the
    // `didUpdateWidget` method:
    // https://api.flutter.dev/flutter/widgets/State/didUpdateWidget.html
    //
    // In fact, it might be a good idea to have a step covering didUpdateWidget,
    // since the list of children could change as well -- what should happen in
    // that case?
    _activateIndex(widget.index);
    return IndexedStack(
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
      index: widget.index,
      children: _buildChildren(context),
    );
  }
}
