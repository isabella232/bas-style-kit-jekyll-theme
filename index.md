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
* [BSK Standard (Page, with item type)]({{ '/tests/layouts/bsk--standard-page-item-type-header' | prepend: site.baseurl }})

## Patterns

### Page patterns

* [page not found]({{ '/tests/patterns/page-not-found' | prepend: site.baseurl }})

#### Service unavailable

* [Service unavailable (basic)]({{ '/tests/patterns/service-unavailable-basic' | prepend: site.baseurl }})
* [Service unavailable (availability)]({{ '/tests/patterns/service-unavailable-availability' | prepend: site.baseurl }})
* [Service unavailable (alternative)]({{ '/tests/patterns/service-unavailable-alternative' | prepend: site.baseurl }})
* [Service unavailable (partly closed)]({{ '/tests/patterns/service-unavailable-partly-closed' | prepend: site.baseurl }})
* [Service unavailable (closed)]({{ '/tests/patterns/service-unavailable-closed' | prepend: site.baseurl }})
* [Service unavailable (replaced)]({{ '/tests/patterns/service-unavailable-replaced' | prepend: site.baseurl }})

#### Problem with this service

* [Problem with this service (basic)]({{ '/tests/patterns/problem-with-service-basic' | prepend: site.baseurl }})
* [Problem with this service (alternative)]({{ '/tests/patterns/problem-with-service-alternative' | prepend: site.baseurl }})

#### Start

* [Start (basic)]({{ '/tests/patterns/start-basic' | prepend: site.baseurl }})
* [Start (before you begin, more information)]({{ '/tests/patterns/start-more-info' | prepend: site.baseurl }})
* [Start (sign in, Microsoft)]({{ '/tests/patterns/start-sign-in-microsoft' | prepend: site.baseurl }})

#### Sign in

* [Sign in (Microsoft)]({{ '/tests/patterns/sign-in-microsoft' | prepend: site.baseurl }})

### Component patterns

#### Item type header

* [Item type header]({{ '/tests/patterns/item-type-header' | prepend: site.baseurl }})

#### ORCID iD

* [ORCID iD]({{ '/tests/patterns/orcid-id' | prepend: site.baseurl }})

#### Markdown textarea

* [Markdown textarea]({{ '/tests/patterns/textarea-markdown' | prepend: site.baseurl }})

## Pages

* [about]({{ '/tests/pages/about' | prepend: site.baseurl }})

<div class="bsk-alert bsk-alert-highlight bsk-alert-info">Pages use the <code>bsk--standard</code> layout</div>

## Variables

| Variable        | Value                                                  |
| --------------- | ------------------------------------------------------ |
| `theme_version` | *{{ site.data.bas-style-kit.bsk-vars.theme_version }}* |
| `bsk_version`   | *{{ site.data.bas-style-kit.bsk-vars.bsk_version }}*   |
{: .bsk-table }
