# BAS Style Kit Jekyll Theme - Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

### Added

* 'is something wrong' and 'back to top' footer includes with optional footer spacer when used with footer content
* Governance statement for use in footers
* Table of Contents (TOC) generic include
* Table of Contents (TOC) Style Kit include
* Page title Style Kit include
* Standard page layout

### Changed [BREAKING!]

* Refactored OGL statement as part of the new governance statement footer include, requiring some variable changes
* Upgraded to Style Kit 0.4.0-beta

### Fixed

* Default URLs to legal policies

### Changed

* Updating order of legal policy links and copyright statement (also changed to 'British Antarctic Survey')
* Updating project copyright from NERC to UKRI

## 0.3.0 - 28/02/2018 - BREAKING!

### Changed [BREAKING!]

* Re-licensing project under the Open Government License
* Upgrading to Jekyll 3.7.2
* Upgrading to Style Kit 0.3.0
* Layouts, includes and data files are now in a `bas-style-kit` namespace 
* Generic *blank* and *HTML* layouts and associated includes have been redeveloped
* The Style Kit layout has been split into *base* and *standard* layouts
* Style Kit includes have been redeveloped and renamed
* All data files now use Yaml formatting to support comments

### Removed [BREAKING!]

* *default* layout, switch to either *bsk--base* or *bsk--standard* as needed
* apple touch icons - although these never worked correctly
* 'back to top' and 'is something wrong' links - these will be re-added when supported in the Style Kit
* HTML5 shim and Respond.js as the Style Kit no longer supports IE 10 or below
* All local assets as they are either now part of the Style Kit, or will be re-added when supported in the Style Kit
* Canonical configuration options removed due to removal of canonical HTML meta tag

### Added

* *bsk--base* layout which implements the Style Kit, but in a very generic way
* *bsk--standard* layout which implements the Style Kit with typical elements such as a header and footer
* CSS files are now loaded from a data file, as with JavaScript
* CSS and JavaScript files can and do use Sub-Resource Integrity (SRI) for better security
* Additional CSS and JavaScript files can be added site wide, in addition to specific pages
* Jekyll Menus plugin
* Jekyll Tidy plugin

### Changed

* Upgrading other Gem dependencies to latest versions
* Upgrading application Docker image to use latest BAS Jekyll image
* The *blank* layout is now based on Jekyll's built in *None* layout
* Improving Dockerfile
* Tidying up README
* Tidying up Dockerfile and Docker Compose
* Gemfile lock file is now tracked
* Updated release procedures

## 0.2.3 - 11/04/2017

### Added

* Note in release notes to ensure the Jekyll variable is updated to reflect the changed version

### Fixed

* Error in site-navigation include, where once an item is found to be active, all subsequent items are flagged as well
* Inconsistent indentation in site-navigation include
* Incorrectly displaying active class name instead of screen-reader active element, in drop-down main navigation items

## 0.2.2 - 21/03/2017

### Added

* Jekyll Data plugin as a theme/gem dependency, allows default config options to be set, and the use of theme data files

### Changed

* Including theme config file in Gemspec to allow default config options to be set
* Switching previous config file used for previewing the theme to an internal config file
* Config option documentation is now consistent, and includes whether a default value is set for each option
* Updating theme screen shot

## 0.2.1 - 21/03/2017

### Added

* Test page for loading per-page JavaScript files

### Fixed

* Removing if statement for `body_js_files` front-matter option, which was checking the wrong value and is redundant

### Changed

* Updating release procedures to update theme screen-shot

## 0.2.0 - 20/03/2017

### Added

* Variables data file to provide information about the theme and version of the Style Kit version used for example

### Fixed

* Documenting that the site base URL will be prefixed to navigation item URLs if one is defined

### Changed

* Body JS include now references files from a data file, and allows per-page files to loaded using front-matter
* Updating theme screen shot

## 0.1.2 - 14/03/2017

### Fixed

* Active site navigation item support when using 'pretty' permalinks

## 0.1.1 - Skipped

## 0.1.0 - 12/03/2017

### Added

* Note that the Gem for this project is one minor version ahead of this version due to a technical error
* Initial project - based on BAS Style Kit version 0.1.0, and adapted from the BAS Style Kit documentation Jekyll site
