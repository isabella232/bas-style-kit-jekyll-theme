# BAS Style Kit Jekyll Theme

## BAS Style Kit Body core JavaScript include

Defines the JavaScript files to be included in the page.

Uses two loops to include:

* core (Style Kit) scripts and their dependencies defined by the [bsk_jekyll_js](/docs/data/bsk_jekyll_js.md) data file
* optional page-specific scripts defined by the `body_js_files` page variable

For each script `integrity` and `crossorigin` attributes are set if a SRI value is set.

This include is not designed to be overridden and **SHOULD NOT** be omitted to ensure the Style Kit scripts are included.
