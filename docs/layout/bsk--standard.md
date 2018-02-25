# BAS Style Kit Jekyll Theme

## BAS Style Kit standard layout

A Style Kit specific layout which defines a typical page structure. This layout is designed for using the Style Kit as a 
an opinionated template, where you want to focus on content, rather than building a page design from scratch. It is 
expected most content will use this layout.

The [`bsk-head`](/docs/include/bsk-head.md) include defines a `<head>` element which define properties such as the
required [viewport](https://style-kit.web.bas.ac.uk/start/standards-accessibility/#responsiveness-and-mobile-first) for
responsiveness and optional favicon.

This include also calls the [`bsk-head--core-styles`](/docs/include/bsk-head--core-styles.md) include to load the Style 
Kit, and any site-specific, CSS files.

The [`bsk-body--standard`](/docs/include/bsk-body--standard.md) include defines a more complex, opinionated `<body>` 
element than the [base](/docs/layout/bsk--base.md) layout consisting of several parts, which together form a *standard
page*. These parts are implemented using includes, and from the top of the page to the bottom are:

1. the [bsk-body--back-to-top](/docs/include/bsk-body--back-to-top.md) include
2. the [bsk-body--standard-header](/docs/include/bsk-body--standard-header.md) include
3. page content wrapped in a [layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers)
4. the [bsk-body--standard-footer](/docs/include/bsk-body--standard-footer.md) include

This include also calls the [bsk-body--core-scripts](/docs/include/bsk-body--core-scripts.md) include to load the Style
Kit, its dependencies, analytics, and any site-specific, JavaScript files.

It is not intended any of these includes will be overridden by sites using this layout. If this is desired consider 
using the [base](/docs/layout/bsk--base.md) layout instead.

**Note:** In it's standard configuration, this layout will include information about the use of cookies, and other legal 
polices. If any component is changed, you **MUST** check this information is made available if the page content is used 
as a website.
