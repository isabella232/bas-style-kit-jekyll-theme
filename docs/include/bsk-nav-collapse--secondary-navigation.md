# BAS Style Kit Jekyll Theme

## BAS Style Kit navbar collapse secondary navigation

Defines a [right aligned](https://style-kit.web.bas.ac.uk/components/navbar/#item-alignment) set of navigation links
defined within a `site_navigation_secondary` menu using the 
[Jekyll menu plugin](https://github.com/forestryio/jekyll-menus).

Each item in this menu will be represented as a [navbar item](https://style-kit.web.bas.ac.uk/components/navbar/#item).
If the item contains children, it will be represented as a 
[drop-down menu item](https://style-kit.web.bas.ac.uk/components/navbar/#drop-down-menus) instead.

The active class will be automatically set when the current page URL matches a URL of an item in this menu. Where the 
current page is a child, both the specific child and it's parent will be marked as active.

This include is not designed to be overridden but **MAY** be omitted, however this can effectively by achieved if the
referenced menu is not set (as it defaults to null).
