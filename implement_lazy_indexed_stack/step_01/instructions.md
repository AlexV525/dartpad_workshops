# Construct a `LazyIndexedStack`

Let's start by creating a `LazyIndexedStack` widget. The constructor should
accept the same arguments as an `IndexedStack`, and pass those arguments to an
`IndexedStack` widget inside the `build` method.

## Requirements

<!-- Could you discuss a bit more why the constructor should look like this? 
What do these properties do and why are they important? This might help the 
reader understand what they're doing and why they're doing it :) -->
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
