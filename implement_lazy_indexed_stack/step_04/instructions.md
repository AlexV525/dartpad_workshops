# Activate the child when the new index match its position

Finally, you need to update the `_activatedList` of boolean flags when the index
changes.

`LazyIndexedStack` will only represent the child with the matching index.
Therefore, only children that are activated should persist `true`.

Try to define an activate function here to activate the child
when the `widget.index` changed.
The method should be safe to called in the `didUpdateWidget` method.

After this step, you'll see different time displayed
("initState() ran at") in different sub-pages.
