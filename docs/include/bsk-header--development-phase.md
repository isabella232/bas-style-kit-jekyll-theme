# BAS Style Kit Jekyll Theme

## BAS Style Kit header development phase

If the value of the 
[`bas_style_kit_jekyll_theme.attributes.site_development_phase`](/docs/config/attributes.md) configuration option is:

* is `experimental`
    * a message is shown with an 
      [experimental label](https://style-kit.web.bas.ac.uk/components/label/#experimental-label) and conventional text
* or, is not `live-stable`
    * a message is shown with a 
      [development phase label](https://style-kit.web.bas.ac.uk/components/label/#development-phases) and conventional
      text 

In either case, the label and conventional text are contained in a 
[layout container](https://style-kit.web.bas.ac.uk/core/layout/#containers) determined by the 
[`bas_style_kit_jekyll_theme.attributes.container`](/docs/config/attributes.md) configuration option.

This include is not designed to be overridden but **MAY** be omitted, however this can effectively by achieved if the
referenced configuration option is set to an appropriate value.
