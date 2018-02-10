---
title: Home
layout: bas-style-kit/bsk--standard
---

<header class="bsk-page-header">
    <h1>BAS Style Kit - Jekyll Template <small>{{ site.data.bsk_jekyll_vars.theme_version }}</small></h1>
</header>

## Samples

### Layouts

* [blank]({{ '/tests/layouts/blank' | prepend: site.baseurl }})
* [HTML]({{ '/tests/layouts/html' | prepend: site.baseurl }})
* [BSK Base]({{ '/tests/layouts/bsk--base' | prepend: site.baseurl }})
* [BSK Standard]({{ '/tests/layouts/bsk--standard' | prepend: site.baseurl }})

## Variables

| Variable        | Value                                           |
| --------------- | ----------------------------------------------- |
| `theme_version` | *{{ site.data.bsk_jekyll_vars.theme_version }}* |
| `bsk_version`   | *{{ site.data.bsk_jekyll_vars.bsk_version }}*   |
{: .bsk-table }
