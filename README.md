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

#### Generic layouts:

* [blank](/docs/layout/blank.md)
* [html](/docs/layout/html.md)

#### Style Kit specific layouts:

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

Includes are often combined with a conditional, typically controlled using a related configuration option. This allows
page elements that are not desired to be disabled more easily.

#### Generic includes:

* [`head`](/docs/include/head.md)
* [`body`](/docs/include/body.md)

#### Style Kit specific includes:

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

#### Is something wrong

**Type:** Snippet

**File:** `snippets/is-something-wrong.html`

Displays a link to give feedback about the current website. It is shown in the default footer include.

See the *Website feedback* section for more information.

### Config options

There are a number of general config options which **SHOULD** be set for this theme:
Data files represent structured data in formats such as JSON, Yaml and CSV. Their contents can be accessed through the
`site.data` variable to populate tables, navigation menus or other use cases.

| Option        | Type   | Description                | Default Value | Example Value                                       | Notes                                      |
| ------------- | ------ | -------------------------- | ------------- | --------------------------------------------------- | ------------------------------------------ |
| `title`       | String | Name of the website        | *None*        | "Example Website"                                   | Also used for the title HTML property      |
| `description` | String | Description of the website | *None*        | "Example website for the BAS Style Kit Jekyll Theme | Used in the description meta HTTP property |
Refer to [Jekyll's documentation](https://jekyllrb.com/docs/datafiles/) for more background information.

There are a number of theme specific config options, some of which **SHOULD** be set:
                        
| Option              | Type   | Description                                                    | Default Value | Example Value          | Notes                                                                       |
| ------------------- | ------ | -------------------------------------------------------------- | ------------- | ---------------------- | --------------------------------------------------------------------------- |
| `phase`             | String | Current development phase of the website                       | `live`        | `alpha`                | See the *Development phase notice* section for more information             |
| `copyright_href`    | String | URL to copyright statement of the website                      | *None*        | `/copyright-statement` | See the *Legal policies* section for more information                       |
| `privacy_href`      | String | URL to privacy policy of the website                           | *None*        | `/privacy-policy`      | See the *Legal policies* section for more information                       |
| `cookies_href`      | String | URL to cookie policy of the website                            | *None*        | `/cookie-policy`       | See the *Legal policies* section for more information                       |
| `feedback_href`     | String | URL to feedback page of the website                            | *None*        | `/feedbac`             | See the *Website feedback* section for more information                     |
| `ga_property`       | String | Google Analytics property of the website                       | *None*        | `UA-64130716-XX`       | Values should start with `UA-64130716-` for BAS Google Analytics properties |
| `nav_items`         | List   | Items in the website to include in the site navigation         | *None*        | *List of items*        | See the *Site navigation* section for more information                      |
| `nav_related_sites` | List   | Items for other BAS websites to include in the site navigation | *List*        | *List of items*        | See the *Site navigation* section for more information                      |
This theme uses data files to define a list of CSS and JavaScript resources to load and to expose some variables about
the theme.

There are some additional general config options which are set by this theme, but can be overriden if needed:
All data files use the `.yml` (Yaml) extension and are namespaced using a `bas-style-kit/` directory - i.e. a data 
element `foo` in the data file `bsk-vars.yml` is available as  `site.data.bas-style-kit.bsk-vars.foo`.

| Option      | Type   | Description                                                          | Default Value | Example Value   | Notes                                                                    |
| ----------- | ------ | -------------------------------------------------------------------- | ------------- | --------------- | ------------------------------------------------------------------------ |
| `gems`      | List   | List of Jekyll plugins to include, set to dependencies of this theme | *List*        | *List of items* | If this option is set within a website, ensure these values are included |
| `permalink` | String | Removes the `.html` file extension from URLs generated by Jekyll     | `pretty`      | `pretty`        | Other options are available, see the Jekyll documentation                |
#### Style Kit specific data files

* [bsk-css](/data-file/bsk-css.md)
* [bsk-js](/data-file/bsk-js.md)
* [bsk-vars](/data-file/bsk-vars.md)

### Variables

This theme defines the following variables which can be used for reporting or debugging purposes:

### JavaScript
| Variable        | Fully Qualified Variable                         | Purpose                                         | Example | Notes |
| --------------- | ------------------------------------------------ | ----------------------------------------------- | ------- | ----- |
| `theme_version` | `site.data.bas-style-kit.bsk_vars.theme_version` | Version of this theme                           | `0.3.0` | -     |
| `bsk_version`   | `site.data.bas-style-kit.bsk_vars.bsk_version`   | Version of the Style Kit used within this theme | `0.3.0` | -     |

JavaScript files can be loaded after the main site content in two ways:

1. Using the `bsk_jekyll_js.json` Jekyll data file - for files that should be loaded in all pages
2. Using the `body_js_files` front-matter option - for files that should only be loaded for specific pages

Both methods are added to the page using the *Body JS* include, using the following structure for each script:

| Property  | Type   | Required | Description                                       | Example Value                            | Notes                                            |
| --------- | ------ | -------- | ------------------------------------------------- | ---------------------------------------- | ------------------------------------------------ |
| `comment` | String | Yes      | Used as a HTML comment added before each script   | `Code for managing cookie banner`        | -                                                |
| `href`    | String | Yes      | Defines the location of the script to be loaded   | `/assets/bsk-jekyll/js/cookie-banner.js` | Depends on the type property value               |
| `type`    | String | Yes      | Controls how this item is processed and displayed | `local`                                  | See below for valid values                       |

Supported script types are:

* `local`
* `remote`

**Note:** See the `bsk_jekyll_js.json` Jekyll data file for scripts which are included in all pages by default.

**Example**

For scripts referenced in the `bsk_jekyll_js.json` Jekyll data file:

```json
{
  {
    "comment": "Cookie library used to persistently hide the cookie banner",
    "href": "https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js",
    "type": "remote"
  },
  {
    "comment": "Code for managing cookie banner",
    "href": "/assets/bsk-jekyll/js/cookie-banner.js",
    "type": "local"
  }
]
```

For scripts referenced in the `body_js_files` front-matter option:

```md
---
title: A page
body_js_files:
  - comment: Cookie library used to persistently hide the cookie banner
    href: https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js
    type: remote
  - comment: Code for managing cookie banner
    href: /assets/bsk-jekyll/js/cookie-banner.js
    type: local
---

# Page content
...
```

#### Remote scripts

Set the `href` property to the URL of a remote file.

**Example**

```
href: https://cdn.web.bas.ac.uk/js-libs/js.cookie-2.1.3.min.js
```

#### Local scripts

Set the `href` property to a URL relative to the base of the current website.

**Note:** The base URL of the website will be prepended to the `href` property, if one is defined.

**Example**

```
href: /assets/bsk-jekyll/js/cookie-banner.js
```



### Legal policies

By law and by policy BAS websites are required to provide end-users with information on various legal policies. Namely:

1. a copyright statement
2. a privacy policy
3. a cookies policy

Links to these policies are displayed in the *Site footer* include, using config options to set their locations.

#### Copyright statement

The `copyright_href` config option **MUST** be set to a location with more information on how information on this 
website is licensed, and how it can be used.

It **MUST** document, which legal entity owns the content on the website, the license they make it available to 
different auidences under, and what these users can and can't do as a result of this license.

It **MUST** acknowledge other rights holders, and the terms under which they make their information available, if this
applies. This may include information from other parts of BAS or NERC, which are licensed differently.

The license under which the majority of the website's content is made available **SHOULD** be displayed in the site 
footer, to make it easy to find by end-users. The phrase `Except where otherwise stated` can be used where multiple 
licenses apply to different types of concept, providing this is suitably explained in the copyright statement, or next
to the relevant content.

Template policies which can be used as an example/base for such policies are being developed with relevant stake
holders. Until these are ready contact the Web & Applications team for advice on what to put in such polices.

**Note:** This **SHOULD NOT** be the copyright statement used on the BAS public website, as it is not representative of 
our other websites.

#### Privacy policy

The `privacy_href` config option **MUST** be set to a location with more information on how user's information is used
by the website.

It **MUST** document if any personal information is collected from end-users, why it is collected, who will hold it 
and process it, how long it will be held for, and how the end-user can access, update or remove this information.

Template policies which can be used as an example/base for such policies are being developed with relevant stake
holders. Until these are ready contact the Web & Applications team for advice on what to put in such polices.

**Note:** This **SHOULD NOT** be the privacy policy used on the BAS public website, as it is not representative of our 
other websites.

#### Cookies policy

The `cookies_href` config option **MUST** be set to a location with more information on how the website uses cookies.

It should document the cookies used, what they are for and when they are set to expire. It should also provide 
information on how users can view and manage cookies used by this website.

Template policies which can be used as an example/base for such policies are being developed with relevant stake
holders. Until these are ready contact the Web & Applications team for advice on what to put in such polices.

**Note:** This **SHOULD NOT** be the cookie policy used on the BAS public website, as it is not representative of our 
other websites.

### Website feedback

Feedback from end-users is vital to build a website based on their needs, rather than the needs we think they have.

To this end, an easy to use mechanism for end-users to submit feedback **SHOULD** be available on all websites.

This theme provides numerous links to a feedback URL, defined using the `feedback_href` config option. This **SHOULD**
take the user to a form where they can provide feedback about the website.

Links to this URL are shown:

* in the site navigation, as the right most item
* in the development phase banner, for development phases except *live*
* in the site footer, as a 'is something wrong with this page?' link

See the *Site navigation*, *Site footer* and *Development phase notice* sections for more information.

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
