# Mark activated states

To maintain the _activated_ state for each child of the stack,
here we implement our own activate recording mechanism
to record if a specified child of the stack has been activated.

## Activate the child when the new index match its position

`LazyIndexedStack` will only represent the child with the matching index.
Therefore, only children that are activated should persist `true`.

Try to define an activate function here to activate the child
when the `widget.index` changed.
The method should be safe to called in the `build` method
since it has no performance cost.
