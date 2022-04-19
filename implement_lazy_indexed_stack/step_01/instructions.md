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

> When making widgets, _compositions is preferred over inheritances_,
> which will placed widgets in the `build()` method instead of using `extends`.

To learn more details about arguments of the `IndexedStack`, see
[the API document](https://api.flutter.dev/flutter/widgets/IndexedStack-class.html).
