# Introduction

Welcome to the introductory `LazyIndexedStack` workshop for Flutter! 👋

In this workshop, you will learn how to use the `IndexedStack` in your code,
and create a lazy-loading `LazyIndexedStack` to lazily build children
only when they're first activated.

This workshop is best for folks already familiar with building simple
Flutter applications. If this is your first time using Flutter, then
check out **[Writing Your First Flutter App](https://flutter.dev/docs/get-started/codelab)**
to get started using Flutter.

## What is `IndexedStack`?

<iframe
  style="width: 97%; aspect-ratio: 16/9;"
  src="https://www.youtube.com/embed/_O0PPD1Xfbk"
  title="IndexedStack (Flutter Widget of the Week)"
  frameborder="0"
  allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

`IndexedStack` is a `Stack` that
shows a single child from a list of children.
The displayed child is the one with the given _index_.
The stack is always as big as the largest child.
When the _index_ is null, then nothing is displayed.

## When should I use `IndexedStack`?

Considering you have multiple pages want to place in a same page
and switch them by the bottom navigation,
or you have a sequence of widgets that needs to display.
`IndexedStack` perfectly suit for these cases.

{% comment %}
A GIF should be presented here.
{% endcomment %}

## What's next?

Throughout this workshop, we'll convert the `IndexedStack`
to be a more efficient, lazy loading `LazyIndexedStack`.
This allows us to add save performance cost at the first place.
Move on to the next step to begin!
