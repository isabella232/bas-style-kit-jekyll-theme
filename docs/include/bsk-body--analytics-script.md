# BAS Style Kit Jekyll Theme

## BAS Style Kit Body analytics include

Defines a script and configuration to implement Google Analytics page view tracking, using the Global Site Tag (gtag)
library. This will only be included if the 
[`bas_style_kit_jekyll_theme.attributes.site_analytics.id`](/docs/config/attributes.md) configuration option is set.

BAS websites **SHOULD**, and this include does, use the 
[IP Anonymisation](https://developers.google.com/analytics/devguides/collection/gtagjs/ip-anonymization) option in 
Google Analytics to reduce, where possible, privacy concerns with analytics tracking. 
