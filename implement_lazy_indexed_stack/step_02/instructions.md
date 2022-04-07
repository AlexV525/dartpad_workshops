# Mark activated states

To maintain the _activated_ state for each child of the stack,
here we implement our own activate recording mechanism
to record if a specified child of the stack has been activated.

## Persist boolean flags for each child

Since the `LazyIndexedStack` accepts a list of child,
we can make a boolean flag list with the same length
of the children to hold their activated states.

Try to define a `List<bool>` here with `widget.children.length`,
and the initialized value equals to `i == widget.index`.
