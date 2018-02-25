# BAS Style Kit Jekyll Theme

## BAS Style Kit base layout

A Style Kit specific layout which defines a basic page structure. This layout is designed for using the Style Kit as a 
framework/foundation rather than a prescribed template. It allows for more free-form designs, whilst still using the
various components of the Style Kit to give consistency.

The [`bsk-head`](/docs/include/bsk-head.md) include defines a `<head>` element which define properties such as the
required [viewport](https://style-kit.web.bas.ac.uk/start/standards-accessibility/#responsiveness-and-mobile-first) for
responsiveness and optional favicon.

This include also calls the [`bsk-head--core-styles`](/docs/include/bsk-head--core-styles.md) include to load the Style 
Kit, and any site-specific, CSS files.

The [`bsk-body`](/docs/include/bsk-body.md) include defines a `<body>` element with page content in a 
[layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers),
and the [bsk-body--back-to-top](/docs/include/bsk-body--back-to-top.md) include.

This include also calls the [bsk-body--core-scripts](/docs/include/bsk-body--core-scripts.md) include to load the Style
Kit, its dependencies, analytics, and any site-specific, JavaScript files.

It is intended that the [`bsk-body`](/docs/include/bsk-body.md) include will be overridden to suit the needs of
individual sites, such as displaying full-screen content.

**Note:** This layout does not include information about the use of cookies, or other legal polices. This information
**MUST** be made available if the page content is used as a website.
