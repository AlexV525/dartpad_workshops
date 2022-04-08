# Introduction

Welcome to the introductory `LazyIndexedStack` workshop for Flutter! 👋

In this workshop, you will learn how to use the `IndexedStack` in your code, and
create a lazy-loading `LazyIndexedStack` that builds children on-demand only
when they're first activated.

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
When the _index_ is null, then nothing is displayed.

## When should I use `IndexedStack`?

`IndexedStack` perfectly suit for the following use cases:

  - If you have multiple pages and want to switch between them using bottom
    navigation.
  - When you have a sequence of widgets you need to display.

<!-- Leftover? It's not a markdown comment and shows up in the tutorial -->
{% comment %}
A GIF should be presented here.
{% endcomment %}

## What's next?

Throughout this workshop, you'll convert the `IndexedStack`
into a more efficient, lazy loading `LazyIndexedStack`.
This allows you to save performance cost at the first place.
Move on to the next step to begin!
