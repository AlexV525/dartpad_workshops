# Construct a `LazyIndexedStack`

Let's start from a pass-through constructor,
passing all arguments to the `IndexedStack`.

## Requirements

A `IndexedStack` generally construct like the below:
```dart
IndexedStack({
  Key? key,
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  StackFit sizing = StackFit.loose,
  this.index = 0,
  List<Widget> children = const <Widget>[],
});
```

> Here we prefer _composition_ over _inheritance_.
