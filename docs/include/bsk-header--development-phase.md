# BAS Style Kit Jekyll Theme

## BAS Style Kit header development phase

The behaviour of this include depends on two values:

* the [`bas_style_kit_jekyll_theme.attributes.site_development_phase`](/docs/config/attributes.md) configuration option
* the `JEKYLL_ENV` environment variable

If the `JEKYLL` environment variable considered first, followed by the `site_development_phase` if applicable.

| `JEKYLL_ENV` value | `site_development_phase` value | Development Phase Shown                                        |
| ------------------ | ------------------------------ | -------------------------------------------------------------- |
| `production`       | *ignored*                      | Experimental phase label with conventional text                |
| *any other value*  | *experimental*                 | Experimental phase label with conventional test                |
| *any other value*  | `live-stable`                  | Nothing                                                        |
| *any other value*  | *any other value*              | Development phase label with conventional text for given value |

Where a development phase is shown, the label and conventional text will be contained in a 
[layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers) determined by the 
[`bas_style_kit_jekyll_theme.attributes.container`](/docs/config/attributes.md) configuration option.

This include is not designed to be overridden but **MAY** be omitted, however this can effectively by achieved if the
referenced configuration options is set to an appropriate value.
