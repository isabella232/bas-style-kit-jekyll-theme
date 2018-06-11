# BAS Style Kit Jekyll Theme

## BAS Style Kit standard layout

A Style Kit specific layout which defines a typical page structure. This layout is designed for using the Style Kit as a 
an opinionated template, where you want to focus on content, rather than building a page design from scratch. It is 
expected any 'page like' content will use this layout.

This layout refines the *standard content* structure defined by the [`bsk--standard`](/docs/layout/bsk--standard.md).

### Body

The *standard content* structure is changed to:

* content is wrapped in a grid layout with two columns, one 1/3 and the other 2/3 of the screen, except at smaller sizes
where stacked columns are used
* in the first (1/3) column, these includes are used:
  * [`bsk-body--toc`](/docs/include/bsk-body--toc.md)
* in the second (2/3 column), these includes are used:
  * [`bsk-body--page-header`](/docs/include/bsk-body--page-header.md)
  * main content

Using [feature flags](/docs/config/feature-flags.md) it is possible to disable the Table of Contents (TOC) include.
This would effectively collapse the first column so an offset is applied to the second column to compensate.
