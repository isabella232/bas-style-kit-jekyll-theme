# BAS Style Kit Jekyll Theme

## BAS Style Kit Body table of contents include

Implements the [jekyll-toc](/docs/includes/toc.md) include with some default options applied.

This include is designed to act as a default implementation to suit most use-cases. This include **SHOULD** be 
overridden if alternative options are needed, or an alternative implementation is preferable.

The TOC options set by this include are:

* `html` - set to the *content* variable, meaning headings in layouts will not be included in the TOC
* `h_min` - set to `2`, meaning heading 1 elements will not be included in the TOC
