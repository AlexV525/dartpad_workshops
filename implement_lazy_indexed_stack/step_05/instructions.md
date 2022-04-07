# Mark activated states

To maintain the _activated_ state for each child of the stack,
here we implement our own activate recording mechanism
to record if a specified child of the stack has been activated.

## Control children updates more precisely

Although we've implemented all necessary steps for lazy-loading,
the current mechanism didn't support to reset the state of an updated child.
we can still implement some more precise controls and updates for each child.

Consider an update with children:

```
Child 0
Child 1
Child 2 ---> Child 2A // Updated with a new widget
Child 3
```

When the _Child 2_ updated to _Child 2A_, the corresponding slot of flags
should be reset to `false` instead of remaining `true`.

This is an open question and have no provided answers.
Feel free to explore the idea yourself,
or skip this step then ahead to the completion.
