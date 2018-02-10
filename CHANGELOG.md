# BAS Style Kit Jekyll Theme - Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

### Changed [Breaking]

* Re-licensing project under the Open Government License
* Upgrading to Jekyll 3.7.2
* Upgrading to Style Kit 0.3.0
* Layouts and Includes are now namespaced in `bas-style-kit`

### Changed

* Upgrading other Gem dependencies to latest versions
* Upgrading application Docker image to use latest BAS Jekyll image 
* Improving Dockerfile
* Tidying up README
* Tidying up Dockerfile and Docker Compose

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
