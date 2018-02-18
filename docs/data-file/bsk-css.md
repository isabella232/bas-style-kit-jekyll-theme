# BAS Style Kit Jekyll Theme

## BAS Style Kit JavaScript data file

This data file is used define a list of CSS files to include as part of this theme. This consists of the BAS Style Kit
styles.

Each file uses the following structure:

| Key         | Purpose                                                                                                                                      | Example                                               | Notes                                                                                      |
| ----------- | -------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| `href`      | Used for the `href` attribute of the `<link>` tag                                                                                            | `https://www.example.com/example.css`                 | -                                                                                          |
| `integrity` | Used for the [SRI](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) `integrity` attribute of of the `<link>` tag | `sha256-yuFC35HZoRiUo5Gkp630hHWFrnmDpoYFsh54qYo2HPc=` | -                                                                                          | 
| `type`      | Either `local` (for resources within the current site) or `remote` (for all other resources)                                                 | `remote`                                              | Used to determine if the `site.baseurl` variable needs to be prepended to the `href` value |

For example:

```yml
-
    href: 'https://cdn.web.bas.ac.uk/bas-style-kit/0.3.0/css/bas-style-kit.min.css'
    integrity: 'sha256-yuFC35HZoRiUo5Gkp630hHWFrnmDpoYFsh54qYo2HPc='
    type: 'remote'
```

**Note:** All these files **SHOULD** be loaded from the BAS CDN.

This data file is not designed to and **SHOULD NOT** be overridden.
