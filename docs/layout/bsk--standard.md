# BAS Style Kit Jekyll Theme

## BAS Style Kit standard layout

A Style Kit specific layout which defines a typical content structure. This layout is designed for using the Style Kit 
as a an opinionated template, where you want to focus on content, rather than building a design from scratch. It is 
expected most content will use this layout.

For specific types of content, 'child' layouts are also available to refine the structure provided by this layout:

* [`bsk--standard-page`](/docs/layout/bsk--standard-page.md) - for page like content with a table of contents and header

### Head

The [`bsk-head`](/docs/include/bsk-head.md) include defines a `<head>` element which define properties such as the
required [viewport](https://style-kit.web.bas.ac.uk/start/standards-accessibility/#responsiveness-and-mobile-first) for
responsiveness and optional favicon.

This include also calls the [`bsk-head--core-styles`](/docs/include/bsk-head--core-styles.md) include to load the Style 
Kit, and any site-specific, CSS files.

### Body

The [`bsk-body--standard`](/docs/include/bsk-body--standard.md) include defines a more complex, opinionated `<body>` 
element than the [base](/docs/layout/bsk--base.md) layout consisting of several parts, which together form a 
*standard content* structure. Form top to bottom, these parts are implemented using these includes:

1. [bsk-body--back-to-top](/docs/include/bsk-body--back-to-top.md)
2. the [bsk-body--standard-header](/docs/include/bsk-body--standard-header.md)
3. content wrapped in a [layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers)
4. [bsk-body--standard-footer](/docs/include/bsk-body--standard-footer.md)

This include also calls the [bsk-body--core-scripts](/docs/include/bsk-body--core-scripts.md) include to load JavaScript
files for the Style Kit, its dependencies, analytics, and any site-specific scripts.

### Overrides

It is not intended any of these includes will be overridden by sites using this layout. If this is desired consider 
using the [base](/docs/layout/bsk--base.md) layout instead.

**Note:** In it's standard configuration, this layout will include information about the use of cookies, and other legal 
polices. If any component is replaced, you **MUST** check this information is made available if the content is used 
as a website.
