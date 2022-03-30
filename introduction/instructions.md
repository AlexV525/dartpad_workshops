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
  width="560"
  height="315"
  src="https://www.youtube.com/embed/_O0PPD1Xfbk"
  title="IndexedStack (Flutter Widget of the Week)"
  frameborder="0"
  allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen>
</iframe>

`IndexedStack` is a `Stack that shows a single child from a list of children.
The displayed child is the one with the given _index_.
The stack is always as big as the largest child.
When the _index_ is null, then nothing is displayed.

## When should I use `IndexedStack`?
