# Introduction

Welcome to the Flutter workshop `LazyIndexedStack`
written by [Alex Li](https://github.com/AlexV525) ! 💙

In this workshop, you will learn how to use the `IndexedStack` in your code,
and implement a lazy-loading `LazyIndexedStack` to lazily build children
only when they are first activated.

> The _lazily build_ here is indicating
> the processes of `Widget`s inflating `Element`s are lazy.

This workshop is intended for people who are already
familiar with building simple Flutter apps.
Check out to get started with Flutter if this is your first time using it.
**[Writing Your First Flutter App.](https://flutter.dev/docs/get-started/codelab)**

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
When the _index_ is null, then nothing is displayed.

## When should I use `IndexedStack`?

`IndexedStack` perfectly suit for the following use cases:

- If you have multiple pages and want to switch between them
  using bottom navigation.
  Typically, the case is when you have different pages together
  in a single route, and only the selected one can be displayed.
- When you have a sequence of widgets you need to display.
  Consider the case that you have a counter but with the image version,
  each increment will display a new image.

<!-- A GIF should be presented here. -->

## What's next?

Throughout this workshop, you'll convert the `IndexedStack`
into a more efficient, lazy loading `LazyIndexedStack`.
This allows you to save performance cost at the first place.
Move on to the next step to begin!
