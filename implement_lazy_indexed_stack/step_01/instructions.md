# Implement the `LazyIndexedStack`

Let's start by creating a `LazyIndexedStack` widget.
The constructor should accept the same arguments
as an `IndexedStack`, and pass those arguments
to an `IndexedStack` widget inside the `build` method.

## Requirements

The `IndexedStack` constructor accepts the following arguments:

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

<!-- Why is this a block quote? -->

> Here we prefer _composition_ over _inheritance_.
