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

# If your site uses additional plugins, append these items
plugins:
  - jekyll-menus
  - jekyll-tidy
```

## Usage

Refer to [Jekyll's theme documentation](https://jekyllrb.com/docs/themes/) for general information.

This theme includes numerous layouts, includes, data files and configuration options to give a flexible design.

### Layouts

Layouts define a common design/structure for a set of content pages. Typically they will wrap page content in elements
such as fixed or fluid width containers, and include common elements such as headers and footers.

This theme defines two types of layout - *generic* and *non-generic*. Generic layouts are non Style Kit specific and 
intended for atypical content. Non-generic layouts implement the Style Kit either broadly or using a more opinionated, 
*standard* way for ease of use and consistency.

All layouts use the `.html` extension. I.e. the layout `blank` is referenced as `blank.html`.

All layouts are namespaced using a `bas-style-kit/` directory - i.e. the layout `blank.html` is available as
`bas-style-kit/blank.html`.

#### Generic layouts

* [blank](/docs/layout/blank.md)
* [html](/docs/layout/html.md)

#### Style Kit specific layouts

* [`bsk--base`](/docs/layout/bsk--base.md)
* [`bsk--base`](/docs/layout/bsk--standard.md)

### Includes

Includes represent common content used across a website, either once per page (such as a header and footer), or multiple
times (such as an alert). Content can include page content or `<head>` element properties for example. Includes can be 
configurable, accepting parameters or blocks of content, though most are used as-is.

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/include/) for more background information.

This theme uses includes extensively, to give finer grained control over how elements of a page are structured and to 
give flexibility when this isn't suitable. For example the main navigation menu is made of includes such as the site 
title and navigation links, each of which can be changed, or included in a different order, minimising the need to 
reimplement large parts of an otherwise fine include.

Includes are often used conditionally, typically controlled using a related configuration option. This allows page
elements that are not desired to be disabled more easily.

All includes use the `.html` extension. I.e. the include `body` is referenced as `body.html`.

All includes are namespaced using a `bas-style-kit/` directory - i.e. the include `body.html` is available as
`bas-style-kit/body.html`.

#### Generic includes

* [`head`](/docs/include/head.md)
* [`body`](/docs/include/body.md)

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

Footer includes:

* [`bsk-footer--contents`](/docs/include/bsk-footer--contents.md)
* [`bsk-footer--legal-policies`](/docs/include/bsk-footer--legal-policies.md)
* [`bsk-footer--ogl`](/docs/include/bsk-footer--ogl.md)

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

Data files represent structured data in formats such as JSON, Yaml and CSV. Their contents can be accessed through the
`site.data` variable to populate tables, navigation menus or other use cases.

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/datafiles/) for more background information.

This theme uses data files to define a list of CSS and JavaScript resources to load and to expose some variables about
the theme.

All data files use the `.yml` (Yaml) extension and are namespaced using a `bas-style-kit/` directory - i.e. a data 
element `foo` in the data file `bsk-vars.yml` is available as  `site.data.bas-style-kit.bsk-vars.foo`.

#### Style Kit specific data files

* [bsk-css](/data-file/bsk-css.md)
* [bsk-js](/data-file/bsk-js.md)
* [bsk-vars](/data-file/bsk-vars.md)

### Variables

This theme defines the following variables which can be used for reporting or debugging purposes.

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/variables/) for more background information.

#### Style Kit specific variables

| Variable        | Fully Qualified Variable                         | Purpose                                         | Example | Notes |
| --------------- | ------------------------------------------------ | ----------------------------------------------- | ------- | ----- |
| `theme_version` | `site.data.bas-style-kit.bsk_vars.theme_version` | Version of this theme                           | `0.3.0` | -     |
| `bsk_version`   | `site.data.bas-style-kit.bsk_vars.bsk_version`   | Version of the Style Kit used within this theme | `0.3.0` | -     |

### Configuration options

Configuration options are used to control how various aspects of a Jekyll site work and to set variable values (if 
used site wide). Some configuration options are defined by Jekyll alter fundamental properties, such as the rendering 
engine used, others are defined within the context of a site, such as a variable for the version of a project.

Configuration options defined by a theme can be overridden by setting the same option in a site configuration file.

Refer to [Jekyll's documentation](https://jekyllrb.com/docs/configuration/) for more background information.

Configuration options are used extensively throughout this theme. Some variables are used to set properties such as the
brand text or image in the navbar (attributes), others are used to enable various features (feature flags).

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

[Git](https://git-scm.com), [Docker](https://www.docker.com/community-edition) and Docker Compose are required to build
this project locally.

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

The Jekyll Data plugin is used to set config options within sites that use this theme. For this to work the site still 
needs to call the Data plugin.

**Note:** Make sure to document which config options are set by this theme, especially conventional options.

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

1. bump version in `jekyll-theme-bas-style-kit.gemspec` and `docker-compose.yml` and `_data/bsk_jekyll_vars.json`
2. `docker-compose build`
3. `docker-compose push`
4. if new plugins have been added, update the usage section for where users override the `gems` config option
5. if new config options have been set, update the usage section
6. update screen-shot (width: 900px)
7. close release
8. commit changes to git and tag with new version
9. `docker-compose run app gem build jekyll-theme-bas-style-kit.gemspec`
10. `docker-compose run app gem push jekyll-theme-bas-style-kit-*.gem`

**Note:** If the BAS Style Kit version changes, make sure to bump that version in `_data/bsk_jekyll_vars.json` too.

## Issue tracking

This project uses [issue tracking](https://gitlab.data.bas.ac.uk/web-apps/bsk/bas-style-kit-jekyll-theme) to manage 
development of new features/improvements and reporting bugs.

**Note:** Read & write access to this issue tracker is restricted. Contact the project maintainer to request access.

## Feedback

The maintainer of this project is the BAS Web & Applications Team, they can be contacted through the 
[BAS Service Desk](mailto:servicedesk@bas.ac.uk)

## License

© Natural Environment Research Council (NERC), 2017 - 2018, British Antarctic Survey.

You may use and re-use this software and associated documentation files free of charge in any format or medium, under 
the terms of the Open Government Licence v3.0.

You may obtain a copy of the Open Government Licence at http://www.nationalarchives.gov.uk/doc/open-government-licence/
