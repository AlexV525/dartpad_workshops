# Mark activated states

To maintain the _activated_ state for each child of the stack,
here we implement our own activate recording mechanism
to record if a specified child of the stack has been activated.

## Build the child according to its activation state
By holding the boolean flag list, you can build each child conditionally.
e.g. `list[i] ? widget.children[i] : const SizedBox()`.

Try to define a `List<Widget>` function here
to build children with their activated state.
