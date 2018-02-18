# BAS Style Kit Jekyll Theme

## BAS Style Kit Standard body include

Very similar to [`bsk-body`](/docs/include/bsk-body.md) but with these additional includes:

* [bsk-body--back-to-top](/docs/include/bsk-body--back-to-top.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.site.back_to_top_anchor`](/docs/config/feature-flags.md) feature flag is `true` (default: `true`)
* [bsk-body--standard-header](/docs/include/bsk-body--standard-header.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.site.standard_header`](/docs/config/feature-flags.md) feature flag is `true`
(default: `true`)
* [bsk-body--standard-footer](/docs/include/bsk-body--standard-footer.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.site.standard_footer`](/docs/config/feature-flags.md) feature flag is `true`
(default: `true`)

As with the [`bsk-body`](/docs/include/bsk-body.md), this include is not designed to be overridden and should meet most 
use-cases. If overridden, the [bsk-body--core-scripts](/docs/include/bsk-body--core-scripts.md) include **MUST** be 
included.
