# BAS Style Kit Jekyll Theme

## BAS Style Kit navbar header brand

Defines an `<a>` element containing a combination of 
[navbar brand text](https://style-kit.web.bas.ac.uk/components/navbar/#brand-text) and/or an
[navbar brand image](https://style-kit.web.bas.ac.uk/components/navbar/#brand-image) depending on the values for the
[`bas_style_kit_jekyll_theme.attributes.site_brand`](/docs/config/attributes.md) configuration options.

If [navbar brand text](https://style-kit.web.bas.ac.uk/components/navbar/#brand-text) and
[navbar brand image](https://style-kit.web.bas.ac.uk/components/navbar/#brand-image) are both set, the required fix
class will be added automatically.

This include is not designed to be overridden but **MAY** be omitted, however this can effectively by achieved if the
referenced configuration options are not set (as they default to null values).
