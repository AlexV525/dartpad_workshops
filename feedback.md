  - Cool topic, very useful! 
  - Intro discuses a great use case for this: BottomNavigation.
  - Consider writing a bit more in each step. Describe *why* the person is doing
    what they're doing. As an advanced flutter programmer, I could see the path
    you wanted me to take, but less experienced Flutter developers might need
    more guidance.
  - I don't know if you've really built a lazy indexed stack. In my mind, a lazy
    indexed stack would only create the widget when it's time to display it.
    Please double-check the implementation. Right now, it creates all widgets up
    front, and simply hides the widget if it isn't "active." Instead, it feels
    like a lazy implementation should only create the widget on-demand using an
    [`IndexedWidgetBuilder`](https://api.flutter.dev/flutter/widgets/IndexedWidgetBuilder.html)
    when the index is first activated.
  - Total time to take the workshop: 38 minutes