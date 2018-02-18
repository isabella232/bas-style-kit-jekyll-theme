# BAS Style Kit Jekyll Theme

## BAS Style Kit Body include

Defines a `<body>` element for use in constructing a HTML5 document.

This include wraps the `{{ page_content }}` variable in a 
[layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers) determined by the 
[`bas_style_kit_jekyll_theme.attributes.container`](/docs/config/attributes.md) configuration option.

It also calls other includes, such as [`bsk-body--core-scripts`](/docs/include/bsk-body--core-scripts.md) and wraps 
everything in a `<body>` element. It is used to group the page content and imports to make layout composition easier.

This include is not designed to be overridden and should meet most use-cases. If overridden, the 
[bsk-body--core-scripts](/docs/include/bsk-body--core-scripts.md) include **MUST** be included.
