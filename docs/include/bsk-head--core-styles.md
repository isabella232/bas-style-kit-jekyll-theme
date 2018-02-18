# BAS Style Kit Jekyll Theme

## BAS Style Kit Head core CSS include

Defines the CSS files to be included in the page.

Uses two loops to include:

* core (Style Kit) styles defined by the [bsk_jekyll_css](/docs/data/bsk_jekyll_css.md)
* optional site-specific styles defined by the `body_css_files` page variable

For each script `integrity` and `crossorigin` attributes are set if a SRI value is set.

This include is not designed to be overridden and **SHOULD NOT** be omitted to ensure the Style Kit styles are included.
