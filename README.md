# jekyll-theme-bas-style-kit

Jekyll theme implementation of the [BAS Style Kit](https://stlye-kit.web.bas.ac.uk).

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

## Usage

Refer to [Jekyll's theme documentation](https://jekyllrb.com/docs/themes/) for general information.

### Selecting the BAS Style Kit Jekyll theme

Add these lines to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-bas-style-kit

gems:
  - jekyll-data
```

**Note:** This theme sets additional config options, see the *Config options* section for more information.

**Note:** If you have loaded any Jekyll plugins using the `gems` option, also include these plugins:

```yaml
gems:
  - jekyll-data
```

### Layouts

This theme provides three layouts:

* blank
* HTML
* default

#### Blank

Returns content without modification, and is used as the fundamental layout, from which all other layouts derive.

This layout is useful if you need to output data in a format other than HTML (such as JSON or XML).

**Note:** You will need to set a suitable content-type header if returning non-HTML content.

#### HTML

Returns content in the `<body>` tag of a basic HTML page. Includes `<head>` elements returned by the *head* include.

**Note:** This layout includes the BAS Style Kit CSS styles, but not Bootstrap JavaScript components (see the 
*default* layout for this).

**Note:** This layout does not include information about the use of Cookies, which **MUST** be displayed if used on a
website. You will need to provide a suitable notice to users if this applies. See the *Cookie notice* section for more
information.

This layout is useful if you need to show content in isolation, or using a specific page style, such as a page designed
for printing, or for displaying full screen.

#### Default

Returns content in a [container](https://style-kit.web.bas.ac.uk/core/layout/#fixed-width-container) with a number of 
additional components using includes:

| Component                | Include File                     | Description                                                                                  | Notes                                                                                      |
| ------------------------ | -------------------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Cookie notice banner     | `layout/cookie-banner.html`      | Dismissible cookie notice                                                                    | See the *Cookie notice* section for more information                                       |
| Site navigation          | `layout/site-navigation.html`    | [Navbar](https://style-kit.web.bas.ac.uk/components/navbar/) containing site navigation      | See the *Site navigation* section for more information                                     |
| Development phase banner | `layout/phase-banner.html`       | Contextual warning for current development phase                                             | See the *Development phase* section for more information                                   |
| Site footer              | `layout/site-footer.html`        | Basic [footer](https://style-kit.web.bas.ac.uk/components/footer/)                           | Designed to be overiden, see the *Legal policies* section for information it must contain |
| JavaScript               | `snippets/body-js.html`          | Scripts required for jQuery, Bootstrap's JavaScript components, and the cookie notice banner | -                                                                                          |
| Analytics                | `snippets/google-analytics.html` | Scripts required for Google Analytics                                                        | Not included if `ga_property` config option is not set                                     |

### Includes

Includes for this theme are split into *layout* and *snippets*. Layouts are used as part of the visual structure of the
site (such as the main navigation). Snippets are more general and used in various places (including in other includes).

#### Cookie Banner

**Type:** Layout

**File:** `layout/cookie-banner.html`

Presents a full-width banner, pinned to the top of the page, with a statement that the site uses cookies, and where a
user can find out more information.

This banner can be dismissed by the user, which will hide the message for 30 days using (ironically) a cookie.

See the *Cookie notice* section for more information.

**Note:** This include depends on the `snippets/body-js.html` include.

#### Phase Banner

**Type:** Layout

**File:** `layout/phase-banner.html`

Presents a full-width banner, pinned after the site navigation, with a statement describing the status of the website. 
For example, if a website is in the *beta* phase of development, a notice advising users that the website is still 
under development will be shown, with an invitation for them to submit feedback.

If a website is in the *live* phase of development, no banner is shown.

See the *Development phase notice* and *Website feedback* sections for more information.

**Note:** The message shown for each development phase cannot currently be changed.

#### Site footer

**Type:** Layout

**File:** `layout/site-footer.html`

Provides a basic [footer](https://style-kit.web.bas.ac.uk/components/footer/) designed to meet requirements for:

* linking to the top of the current page and to give feedback
* explaining the license for content within the website
* displaying links to legal polices

As footers will vary greatly between websites, this footer is deliberately basic, and limited, in its structure. It is
expected this include will be overiden by each website with its own specific footer.

See the *Legal policies* and *Website feedback* sections for information on what a footer **MUST** contain.

#### Site navigation

**Type:** Layout

**File:** `layout/site-navigation.html`

Provides a default implementation of a [navbar](https://style-kit.web.bas.ac.uk/components/navbar/) designed to meet 
the needs of most websites. The navbar consists of:

* the site title
* a toggle to show or hide navigation items on smaller devices (such as phones)
* a set of navigation items (see the *Site navigation* section for how to set these)
* a drop-down of other relevant BAS websites, including the BAS public website and data catalogue
* a link to give feedback about the website

See the *Site navigation* and *Website feedback* sections for more information.

#### Back to top

**Type:** Snippet

**File:** `snippets/back-to-top.html`

Provides a link to the `#site-top` anchor, positioned at the top of each page. It is shown in the default footer 
include.

**Note:** This snippet depends on the *default* layout being used, or a layout with a `#site-top` element defined.

#### Body JS

**Type:** Snippet

**File:** `snippets/body-js.html`

Inserts `<script>` tags to reference JavaScript files. Entries defined in the `bsk_jekyll_js.json` data file will be
output first, followed by per-page files using the `body_js_files` front-matter option.

See the *JavaScript* section for more information.

**Note:** This snippet is designed for loading JavaScript *after* the main page content. If a script needs to be run 
before this content, you will need to do this manually.

#### Google Analytics

**Type:** Snippet

**File:** `snippets/google-analytics.html`

If the `ga_property` config option is set, include the Google Analytics tracking script, and configures it for the 
relevant Google Analytics property.

The tracking script is configured to anonymise the IP address of visitors client side, meaning we it is never visible 
to the Google Analytics service.

#### Head

**Type:** Snippet

**File:** `snippets/head.html`

Represents the `<head>` tag of a HTML page with these elements:

* HTML doc-type
* UTF-8 character encoding scheme
* directive for Internet Explorer to use the latest rendering engine available (ignored by Microsoft Edge)
* directive for devices to set the viewport width to the width of the current device in CSS pixels at a scale of 100%,
and an initial scale of 100%
* the title directive, containing a page title (if set) followed by the site `title` config option
* the description directive, containing the site `description` config option
* the canonical directive, used for constructing internal URLs and by search engines for deduplicating content where it
is available from multiple locations. Uses the `baseurl` config option and expresses a preference for URLs without a
`.html` extension if used.
* links to the image used by mobile devices if this website is pinned to a home-screen
* references to the BAS Style Kit, Jekyll theme, and website specific CSS
* workarounds for older versions of Internet Explorer to not break with the use of modern HTML features

#### Is something wrong

**Type:** Snippet

**File:** `snippets/is-something-wrong.html`

Displays a link to give feedback about the current website. It is shown in the default footer include.

See the *Website feedback* section for more information.

### Assets

All assets in this theme are scoped to the `bsk-jekyll` directory.

**Note:** In the longer term, all of these assets are due to be hosted within the BAS CDN, rather than within each 
website that uses this theme. This makes such sites more consistent, and gives performance benefits using browser 
caching.

**Note:** To include JavaScript files, after the page has loaded, see the *JavaScript* section.

#### `bsk-jekyll/bas-style-kit-jekyll-theme.scss`

CSS styles specific to this theme, designed to be the same for each site using this theme.

**Note:** This file **SHOULD NOT** be overiden, use `css/main.scss` instead.

**Note:** This file currently contains some styles that are waiting to be merged with the upstream Style Kit project.

#### `bsk-jekyll/img/apple-touch-icon.png`

Image used if this website is pinned to the start screen of a smartphone.

**Note:** The name of this file is conventional, and **SHOULD NOT** be changed. It **MAY** be overiden if needed.

#### `bsk-jekyll/js/cookie-banner.js`

Simple script to set a cookie when the user dismisses the cookie banner. If this cookie is present the banner will not 
be shown on subsequent pages for a period of 30 days. After this time the banner will be shown again, until dismissed 
again for another 30 days.

See the *JavaScript* section for more information on how this file is loaded.

#### `css/main.scss`

CSS styles specific to each website. This file is empty by default and is designed to be overiden by each website.

**Note:** This file is included in the *head* include, and so **SHOULD NOT** be removed to avoid 404 errors. It **MAY**
be left empty if not needed.

**Note:** This file will not be moved to the BAS CDN.

### Config options

There are a number of general config options which **SHOULD** be set for this theme:

| Option        | Type   | Description                | Default Value | Example Value                                       | Notes                                      |
| ------------- | ------ | -------------------------- | ------------- | --------------------------------------------------- | ------------------------------------------ |
| `title`       | String | Name of the website        | *None*        | "Example Website"                                   | Also used for the title HTML property      |
| `description` | String | Description of the website | *None*        | "Example website for the BAS Style Kit Jekyll Theme | Used in the description meta HTTP property |

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

There are some additional general config options which are set by this theme, but can be overriden if needed:

| Option      | Type   | Description                                                          | Default Value | Example Value   | Notes                                                                    |
| ----------- | ------ | -------------------------------------------------------------------- | ------------- | --------------- | ------------------------------------------------------------------------ |
| `gems`      | List   | List of Jekyll plugins to include, set to dependencies of this theme | *List*        | *List of items* | If this option is set within a website, ensure these values are included |
| `permalink` | String | Removes the `.html` file extension from URLs generated by Jekyll     | `pretty`      | `pretty`        | Other options are available, see the Jekyll documentation                |

### Theme variables

The `bsk_jekyll_vars.json` Jekyll data file contains variables which can be used by websites using this theme.

| Variable        | Type   | Description                                         | Notes |
| --------------- | ------ | --------------------------------------------------- | ----- |
| `theme_version` | String | Version of the BAS Style Kit Jekyll Theme           | -     |
| `bsk_version`   | String | Version of the BAS Style Kit used within this theme | -     |

### JavaScript

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

### Site navigation

Two kinds of navigation item are supported within the site navigation (an instance of the  
[navbar](https://style-kit.web.bas.ac.uk/components/navbar/) component):

1. resources within the current website - shown after the site title
2. BAS websites relevant to the current website - shown before the feedback item on the navbar's right

Both kinds of item are displayed using the *Site navigation* include, and set using config options:

* internal items: `nav_items`
* related items: `nav_related_sites`

#### Internal items

This theme allows multiple types of item to be used for internal navigation items. Some of these types are generic, 
some are included to integrate more easily with Jekyll's conventions and features.

**Properties**

| Property | Type   | Required | Description                                       | Example Value | Notes                                            |
| -------- | ------ | -------- | ------------------------------------------------- | ------------- | ------------------------------------------------ |
| `name`   | String | Yes      | Used as the link text                             | `About`       | -                                                |
| `type`   | String | Yes      | Controls how this item is processed and displayed | `single_item` | May require additional properties to be set      |

Supported item types are:

* `single_item`
* `dropdown_item`

**Example**

```yml
nav_items:
  -
    name: About
    type: single_item
```

##### Single item

The most basic item type, set manually and displayed as a navbar item (link).

**Additional Properties**

| Property | Type   | Required | Description                       | Example Value | Notes                                            |
| -------- | ------ | -------- | --------------------------------- | ------------- | ------------------------------------------------ |
| `href`   | String | Yes      | Used as the link `href` attribute | `/about`      | Set the `href` property to `/` for the home page |

**Note:** The base URL of the website will be prepended to the `href` property, if one is defined.

**Active item**

When the current page matches the `href` attribute, the item is made the active navbar item.

**Example**

```yml
nav_items:
  -
    name: Home
    type: single_item
    href: /
  -
    name: About
    type: single_item
    href: /about
```

##### Dropdown item

A more complex item type, set manually and displayed as a 
[navbar drop-down](https://style-kit.web.bas.ac.uk/components/navbar/#drop-down-menus).

**Note:** Advanced drop-down features such as dividers and headers are not supported.

**Additional Properties**

| Property           | Type   | Required | Description                                | Example Value | Notes                                            |
| ------------------ | ------ | -------- | ------------------------------------------ | ------------- | ------------------------------------------------ |
| `actions`          | List   | Yes      | Defines the actions for the drop-down menu | N/A           | -                                                |
| `actions.*.name`   | String | Yes      | Used as the action text                    | `Downloads`   | Example of a single action                       |
| `actions.*.href`   | String | Yes      | Used as the action `href` atttibute        | `/resources/downloads` | Example of a single action              |

**Note:** The base URL of the website will be prepended to the `action.*.href` property, if one is defined.

**Active item**

When the current page matches the `href` attribute of an action in a drop-down item, the drop-down action is made 
active, and drop-down menu the active navbar item.

**Example**

```yml
nav_items:
  -
    name: Resources
    type: dropdown_item
    actions:
      -
        name: Downloads
        href: /resources/downloads
```

#### Related items

Related items are comparatively  easier to define than internal items, it uses the same structure as the `single_item`
internal item type.

**Note:** Related items **SHOULD** always include entries for the BAS public website and BAS data catalogue.

**Note:** Related items **SHOULD NOT** include non-BAS websites, as the drop-down menu title 'Part of the British 
Antarctic Survey' implies its contents will be BAS operated websites.

**Example**

```yml
nav_related_sites:
  -
    name: BAS Home
    href: https://www.bas.ac.uk
  - 
    name: BAS Style Kit
    href: https://style-kit.bas.ac.uk
  - 
    name: Discover BAS data
    href: https://data.bas.ac.uk
```

### Cookie notice

By law and by policy BAS websites are required to tell end-users whether cookies are used, and if so, where they can 
find out more information about these cookies.

It is assumed all BAS websites will use cookies, not least as all websites are expected to use analytics tracking,
which depends on cookies.

This theme provides a cookie banner to meet this need. It consists of:

* the `phase` config option - which defines the URL to a page explaining how cookies are used on this website
* the *Cookie banner* include - which displays a dismissible message and a link to the cookies usage page
* the *Site footer* include - which includes a link to the cookies usage page
* the *Body JS*  include - which includes the JavaScript needed to make the cookie banner dismissible

The `cookies_href` config option **MUST** be set to a location with more information on how the website uses cookies.
See the *Legal policies* section for more information.

**Note:** This **SHOULD NOT** be the cookie policy used on the BAS public website, as it is not representative of our 
other websites.

### Development phase notice

Websites exist at various stages of a development lifecycle - from inception, development, general availability through
to retirement.

Various points in this lifecycle are relevant to highlight to end-users, to give context and managing expectations.
For example, new websites likely won't perform well, or have missing information.

The BAS Style Kit, and this theme, support the 
[development phases](https://www.gov.uk/service-manual/agile-delivery#phases-of-an-agile-project) defined by the 
Government Digital Service (GDS) - these are:

* Discovery - a stage before any website is built
* Alpha - an early prototyping stage
* Beta - a pre-release stage, things are expected to work correctly but with restrictions in terms of scale, 
completeness or performance
* Live - a service in general release - expected to work correctly without restrictions
* Retirement - a service being wound down - expected to work until being shut-down, but no further improvements made

This theme provides a development phase banner to inform end-users of the current development phase. It consists of:

* the `phase` config option - which defines current development phase for the website
* the *Phase banner* include - which displays information to end-users

The `phase` config option **MUST** be set to one of these options:

* `alpha`
* `beta`
* `live`
* `retired`

For all phases except live, a banner with a link to give site feedback will be shown. In the live phase no additional
information is shown.

**Note:** The *discovery* phase is not supported as website prototypes should only be made in the *alpha* stage.

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

[Git](https://git-scm.com) and [Docker](https://www.docker.com/products/docker) [1] are required to build this project 
locally.

To update the Docker image for this project, access to the private 
[BAS Docker Registry](https://docker-registry.data.bas.ac.uk) [2] is also required.

```shell
$ git clone https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-jekyll-theme.git
$ cd bas-style-kit-jekyll-theme

$ docker-compose up
```

Go to [localhost:9000](http://localhost:9000) to preview the theme.

**Note:** If you don't have access to the BAS Private Docker Registry, you will need to build the project Docker image 
locally first using `docker-compose build`.

[1] To install Git and Docker:

**On macOS**

```shell
$ brew install git
$ brew cask install docker
```

**On Windows**

* Install Docker and Git using their respective installers

[2] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

### Updating dependencies

If `Gemfile` is changed, the project Docker image will need to be rebuilt and pushed to the private BAS Docker 
Repository [1].

The current project version is used as part of the project Docker image tag to ensure the latest version is used by all 
developers. Before rebuilding this image you **MUST** update this tag value in `docker-compose.yml` and `.gitlab-ci.yml` 
first.

```shell
$ cd jekyll-theme-bas-style-kit/

$ docker-compose build app
$ docker-compose push app
```

[1] The first time you use this registry, you will need to authenticate using:
`docker login docker-registry.data.bas.ac.uk`

### Jekyll plugins

Additional Jekyll plugins can be used by listing them as dependencies of this theme.

When the theme is installed by an end-user these plugins will be also be installed. This theme includes a `_config.yml`
to set `gems` option to include any required plugins.

### Jekyll config options

The Jekyll Data plugin is used to set config options within sites that use this theme. For this to work the site still 
needs to call the Data plugin, other config options can then be set by this plugin.

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

This project uses issue tracking, see the 
[issue tracker](https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-jekyll-theme/issues) for more information.

**Note:** Read & write access to this issue tracker is restricted. Contact the project maintainer to request access.

## Feedback

The maintainer of this project is the BAS Web & Applications Team, they can be contacted at: webapps@bas.ac.uk.

## License

Copyright 2017 NERC BAS.

Unless stated otherwise, all code is licensed under the MIT license.

Copies of this licenses are included within this project.
