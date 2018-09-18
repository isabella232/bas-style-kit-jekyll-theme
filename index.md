---
title: Home
layout: bas-style-kit/bsk--standard
---

<header class="bsk-page-header">
    <h1>BAS Style Kit - Jekyll Template <small>{{ site.data.bsk_jekyll_vars.theme_version }}</small></h1>
</header>

## Layouts

* [blank]({{ '/tests/layouts/blank' | prepend: site.baseurl }})
* [HTML]({{ '/tests/layouts/html' | prepend: site.baseurl }})
* [BSK Base]({{ '/tests/layouts/bsk--base' | prepend: site.baseurl }})
* [BSK Standard]({{ '/tests/layouts/bsk--standard' | prepend: site.baseurl }})
* [BSK Standard (Page)]({{ '/tests/layouts/bsk--standard-page' | prepend: site.baseurl }})

## Patterns

### Page patterns

* [page not found]({{ '/tests/patterns/page-not-found' | prepend: site.baseurl }})

#### Service unavailable

* [Service unavailable (basic)]({{ '/tests/patterns/service-unavailable-basic' | prepend: site.baseurl }})

## Pages

* [about]({{ '/tests/pages/about' | prepend: site.baseurl }})

<div class="bsk-alert bsk-alert-highlight bsk-alert-info">Pages use the <code>bsk--standard</code> layout</div>

## Variables

| Variable        | Value                                                  |
| --------------- | ------------------------------------------------------ |
| `theme_version` | *{{ site.data.bas-style-kit.bsk-vars.theme_version }}* |
| `bsk_version`   | *{{ site.data.bas-style-kit.bsk-vars.bsk_version }}*   |
{: .bsk-table }
