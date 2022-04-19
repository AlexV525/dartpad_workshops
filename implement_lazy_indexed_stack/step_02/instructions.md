# Mark activated states

Next, you'll need to keep track of which widgets
have been viewed or _activated_.
To maintain the _activated_ state for each child of the stack,
implement the mechanism to record
if a specified child of the stack has been viewed.

## Persist boolean flags for each child

Since the `LazyIndexedStack` accepts a list of child,
you can make a boolean flag list with the same length
of the children to hold their activated states.

Try to define a `List<bool>` here with `widget.children.length`,
and the initialized value equals to `i == widget.index`.
