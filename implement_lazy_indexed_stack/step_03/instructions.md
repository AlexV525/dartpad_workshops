# Build the child according to its activation state

Now that you have a boolean flag list, you can build each child conditionally.
e.g. `list[i] ? widget.children[i] : const SizedBox()`.

Try to define a `List<Widget>` function here
to build children with their activated state.
