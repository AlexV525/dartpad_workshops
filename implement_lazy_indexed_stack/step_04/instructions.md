# Activate the child when the new index match its position

Finally, you need to update the `_activatedList` of boolean flags when the index
changes.

`LazyIndexedStack` will only represent the child with the matching index.
Therefore, only children that are activated should persist `true`.

Try to define an activate function here to activate the child
when the `widget.index` changed.
The method should be safe to called in the `build` method
since it has no performance cost.
<!-- The build method should not perform this work. It belongs in didUpdateWidget.

The build method "can potentially be called in every frame and should not have any side effects beyond building a widget."

 https://api.flutter.dev/flutter/widgets/StatelessWidget/build.html -->