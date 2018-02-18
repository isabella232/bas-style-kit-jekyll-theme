# BAS Style Kit Jekyll Theme

## BAS Style Kit Body standard header include

Defines a conventional, site wide, `<header>` element with an ID of `#site-header`, made up of these includes:

* [bsk-header--cookie-notice](/docs/include/bsk-header--cookie-notice.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.standard_header.cookie_notice`](/docs/config/feature-flags.md) feature flag 
is `true` (default: `true`)
* [bsk-header--site-navigation](/docs/include/bsk-header--site-navigation.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.standard_header.site_navigation`](/docs/config/feature-flags.md) feature flag 
is `true` (default: `true`)
* [bsk-header--development-phase](/docs/include/bsk-header--development-phase.md) if the 
[`bas_style_kit_jekyll_theme.feature_flags.standard_header.development_phase`](/docs/config/feature-flags.md) feature 
flag is `true` (default: `true`)

This include is not designed to be overridden and should meet most use-cases. If overridden, the 
[bsk-header--cookie-notice](/docs/include/bsk-header--cookie-notice.md) include, or a suitable alternative, **MUST** be 
included.
