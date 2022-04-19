import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

/// Using the [StatefulWidget] for further implementations.
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
  final int index;
  final List<Widget> children;

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      alignment: widget.alignment,
      textDirection: widget.textDirection,
      sizing: widget.sizing,
      index: widget.index,
      children: widget.children,
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'LazyIndexedStack', home: DemoPage());
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int _index = 0;

  void _selectIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: LazyIndexedStack(
              index: _index,
              children: List<Widget>.generate(
                3,
                (int index) => _SubIndexPage(index),
              ),
            ),
          ),
          BottomNavigationBar(
            currentIndex: _index,
            onTap: _selectIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_1),
                label: '1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_2),
                label: '2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_3),
                label: '3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubIndexPage extends StatefulWidget {
  const _SubIndexPage(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  State<_SubIndexPage> createState() => _SubIndexPageState();
}

class _SubIndexPageState extends State<_SubIndexPage> {
  DateTime? _displayTime;

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _displayTime = DateTime.now().subtract(
            const Duration(milliseconds: 300),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          'This is page ${widget.index}',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 64,
              ),
          textAlign: TextAlign.center,
        ),
        if (_displayTime == null)
          const Spacer()
        else
          Expanded(child: Text('initState() ran at $_displayTime')),
      ],
    );
  }
}
