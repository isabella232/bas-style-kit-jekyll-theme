# BAS Style Kit Jekyll Theme

Jekyll theme for the [BAS Style Kit](https://stlye-kit.web.bas.ac.uk).

![Screenshot of theme](screenshot.png)

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-bas-style-kit"
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```
$ gem install jekyll-theme-bas-style-kit
```

Add these lines to your `_config.yml` to use the Style Kit theme:

```yaml
theme: jekyll-theme-bas-style-kit
```

## Usage

Refer to [Jekyll's theme documentation](https://jekyllrb.com/docs/themes/) for general information.

### Layouts

This theme defines two types of layout:

* *generic* - non Style Kit specific intended for atypical content
* *non-generic* - implement the Style Kit either broadly or in more opinionated forms

All layouts use the `.html` extension. I.e. the layout `blank` should be referenced as `blank.html`.

All layouts are namespaced using a `bas-style-kit/` directory - i.e. the layout `blank.html` should be referenced as
`bas-style-kit/blank.html`.

To use a layout by default add the following to your `_config.yml`:

```yml
defaults:
  -
    scope:
      # an empty string here means all files in the project
      path: ""
    values:
      layout: "bas-style-kit/bsk--standard"
```

#### Generic layouts

* [`blank`](/docs/layout/blank.md)
* [`html`](/docs/layout/html.md)

#### Style Kit specific layouts

* [`bsk--base`](/docs/layout/bsk--base.md)
* [`bsk--standard`](/docs/layout/bsk--standard.md)
* [`bsk--standard-page`](/docs/layout/bsk--standard-page.md)

### Includes

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/include/) for general information.

This theme uses includes extensively to give fine grained control over how elements such as the navbar behave, including
both their content and structure.

Includes are often used conditionally using a related configuration option, to be disabled more easily.

All includes use the `.html` extension. I.e. the include `body` should be referenced as `body.html`.

All includes are namespaced using a `bas-style-kit/` directory - i.e. the include `body.html` should be referenced as
`bas-style-kit/body.html`.

#### Generic includes

* [`head`](/docs/include/head.md)
* [`body`](/docs/include/body.md)
* [`toc`](/docs/include/toc.md)

#### Style Kit specific includes

* [`bsk-head`](/docs/include/bsk-head.md)
* [`bsk-body`](/docs/include/bsk-body.md)
* [`bsk-body--standard`](/docs/include/bsk-body--standard.md)

HTML Head includes:

* [`bsk-head--core-meta`](/docs/include/bsk-head--core-meta.md)
* [`bsk-head--seo-meta`](/docs/include/bsk-head--seo-meta.md)
* [`bsk-head--core-styles`](/docs/include/bsk-head--core-styles.md)
* [`bsk-head--favicon`](/docs/include/bsk-head--favicon.md)

HTML Body includes:

* [`bsk-body--core-scripts`](/docs/include/bsk-body--core-scripts.md)
* [`bsk-body--analytics-script`](/docs/include/bsk-body--analytics-script.md)
* [`bsk-body--back-to-top`](/docs/include/bsk-body--back-to-top.md)
* [`bsk-body--standard-header`](/docs/include/bsk-body--standard-header.md)
* [`bsk-body--standard-footer`](/docs/include/bsk-body--standard-footer.md)
* [`bsk-body--page-header`](/docs/include/bsk-body--page-header.md)
* [`bsk-body--toc`](/docs/include/bsk-body--toc.md)

Footer includes:

* [`bsk-footer--back-to-top`](/docs/include/bsk-footer--back-to-top.md)
* [`bsk-footer--contents`](/docs/include/bsk-footer--contents.md)
* [`bsk-footer--governance`](/docs/include/bsk-footer--governance.md)
* [`bsk-footer--is-something-wrong`](/docs/include/bsk-footer--is-something-wrong.md)
* [`bsk-footer--legal-policies`](/docs/include/bsk-footer--legal-policies.md)

Header includes:

* [`bsk-header--cookie-notice`](/docs/include/bsk-header--cookie-notice.md)
* [`bsk-header--site-navigation`](/docs/include/bsk-header--site-navigation.md)
* [`bsk-header--development-phase`](/docs/include/bsk-header--development-phase.md)

Navigation includes:

* [`bsk-nav--header`](/docs/include/bsk-nav--header.md)
* [`bsk-nav--collapse`](/docs/include/bsk-nav--collapse.md)
* [`bsk-nav-header--collapse-trigger`](/docs/include/bsk-nav-header--collapse-trigger.md)
* [`bsk-nav-header--brand`](/docs/include/bsk-nav-header--brand.md)
* [`bsk-nav-collapse--primary-navigation`](/docs/include/bsk-nav-collapse--primary-navigation.md)
* [`bsk-nav-collapse--secondary-navigation`](/docs/include/bsk-nav-collapse--secondary-navigation.md)

### Data files

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/datafiles/) for general information.

This theme uses data files to define CSS and JavaScript resources to load and for some variables about the theme.

All data files use the `.yml` (Yaml) extension and are namespaced using a `bas-style-kit/` directory - i.e. a data 
element `foo` in the data file `bsk-vars.yml` is available as `site.data.bas-style-kit.bsk-vars.foo`.

#### Style Kit specific data files

* [bsk-css](/data-file/bsk-css.md)
* [bsk-js](/data-file/bsk-js.md)
* [bsk-vars](/data-file/bsk-vars.md)

### Variables

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/variables/) for general information.

#### Style Kit specific variables

| Variable        | Fully Qualified Variable                         | Purpose                                         | Example | Notes |
| --------------- | ------------------------------------------------ | ----------------------------------------------- | ------- | ----- |
| `theme_version` | `site.data.bas-style-kit.bsk-vars.theme_version` | Version of this theme                           | `0.3.0` | -     |
| `bsk_version`   | `site.data.bas-style-kit.bsk-vars.bsk_version`   | Version of the Style Kit used within this theme | `0.3.0` | -     |

### Configuration options

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/configuration/) for general information.

Configuration options are used extensively throughout this theme. Some variables are used to set properties such as the
brand text or image in the navbar (attributes), others are used to enable various features (feature flags).

Configuration options operate at different scopes, *site* or *page*. Site options applies to across a site, whereas 
page options can be applied to specific content items. Default values can be set for page options, which can then be
overridden by specific content items.

Configuration options for this theme are namespaced under a `bas_style_kit_jekyll_theme` option - i.e. an option `foo`
is set as `bas_style_kit_jekyll_theme.foo`.

Configuration options in this documentation use a dot notation to indicate a nested structure - i.e. an option `foo.bar`
should be set as:

```yml
foo:
  bar
```

A configuration option `bas_style_kit_jekyll_theme.feature_flags.site.back_to_top_anchor` should be set as:

```yml
bas_style_kit_jekyll_theme:
  feature_flags:
    site:
      back_to_top_anchor: '[value]'
```

#### Style Kit specific configuration options

* [feature flags](/docs/config/feature-flags.md)
* [attributes](/docs/config/attributes.md)

### Plugins

This theme depends on these plugins:

* [Jekyll data](https://github.com/ashmaroli/jekyll-data) - for including theme data files into a site's configuration
* [Jekyll menu](https://github.com/forestryio/jekyll-menus) - for managing navigation menus
* [Jekyll tidy](https://github.com/apsislabs/jekyll-tidy) - for rewriting HTML output to be well structured

## Development

[Git](https://git-scm.com), [Docker](https://www.docker.com/community-edition) and 
[Docker Compose](https://docs.docker.com/compose/overview/) are required to build this project locally.

To update the Docker image for this project, access to the private 
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) [1] is also required.

```shell
$ git clone https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-jekyll-theme.git
$ cd bas-style-kit-jekyll-theme
$ docker-compose up
```

Visit [localhost:9000](http://localhost:9000) to see a preview of the theme.

**Note:** If you don't have access to the BAS Private Docker Registry, you will need to build the project Docker image 
locally first using `docker-compose build`.

[1] The first time you use this registry, you will need to authenticate using:

```shell
$ docker login docker-registry.data.bas.ac.uk
```

### Updating dependencies

If the `.gemspec` for this project is changed, the project Docker image will need to be rebuilt and pushed to the 
private BAS Docker Repository [1].

```shell
$ docker-compose build app
$ docker-compose push app
```

[1] The first time you use this registry, you will need to authenticate using:

```shell
$ docker login docker-registry.data.bas.ac.uk
```

### Jekyll plugins

Additional Jekyll plugins (gems) can be used by listing them as dependencies in the `gems` option in `_config.yml`.

They will be installed automatically when this theme is used by an end-user.

### Jekyll config options

The Jekyll Data plugin is used to set config options within sites that use this theme. Make sure to document which 
config options are set by this theme.

### Ruby Gem

This theme is distributed as a Ruby Gem, through the public [Ruby Gems](https://rubygems.org) gem hosting service.

The `jekyll-theme-bas-style-kit.gemspec` file details the properties of the Gem for this project.

**Note:** The `spec.files` parameter controls which files in this project are copied into the Gem. If a file is not 
listed it won't be included. This is separate to the Git `.gitignore` file.

## GitHub mirror

A read-only mirror of this project's repository is maintained on GitHub, to support Jekyll's automatic theme 
installation, and to allow use by those outside of BAS.

Merge requests **WILL NOT** be accepted on this mirror.

## Release procedures

Before release:

1. create a release branch
2. remove `-develop` from the version in:
  * `jekyll-theme-bas-style-kit.gemspec`
  * `docker-compose.yml`
  * `_data/bsk_jekyll_vars.json`
3. push the app docker image [1]
4. if new config options have been set, update the usage section
5. update screen-shot (width: 900px)
6. close release in changelog
7. commit changes, merge with master and tag with new version
8. push the release to Ruby Gems [2]

**Note:** If the BAS Style Kit version changes, make sure to bump that version in `_data/bsk_jekyll_vars.json` too.

After release:

1. bump the version with `-develop` as a prefix in:
  * `jekyll-theme-bas-style-kit.gemspec`
  * `docker-compose.yml`
  * `_data/bsk_jekyll_vars.json`
2. push the app docker image [1]
3. commit changes, merge with master and close release branch

[1]

```shell
$ docker-compose build
$ docker-compose push
```

[2]

```shell
$ docker-compose run app gem build jekyll-theme-bas-style-kit.gemspec
$ docker-compose run app gem push jekyll-theme-bas-style-kit-*.gem
```

**Note:** Add `entrypoint: ash` to the `app` service in `docker-compose.yml` to run these commands

## Issue tracking

This project uses [issue tracking](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-jekyll-theme) to manage 
development of new features/improvements and reporting bugs.

**Note:** Read & write access to this issue tracker is restricted. Contact the project maintainer to request access.

## Feedback

The maintainer of this project is the BAS Web & Applications Team, they can be contacted through the 
[BAS Service Desk](mailto:servicedesk@bas.ac.uk).

## License

© UK Research and Innovation (UKRI), 2017-2018, British Antarctic Survey.

You may use and re-use this software and associated documentation files free of charge in any format or medium, under 
the terms of the Open Government Licence v3.0.

You may obtain a copy of the Open Government Licence at http://www.nationalarchives.gov.uk/doc/open-government-licence/
