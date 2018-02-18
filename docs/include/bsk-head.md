# BAS Style Kit Jekyll Theme

## BAS Style Kit Head include

Defines a `<head>` element for use in constructing a HTML5 document.

This include simply calls other includes and wrap them in the `<head>` element. It is used to group these imports to 
make layout composition easier.

This include is not designed to be overridden and should meet most use-cases. If overridden, the 
[bsk-head--core-meta](/docs/include/bsk-head--core-meta.md) and 
[bsk-head--core-styles](/docs/include/bsk-head--core-styles.md) includes **MUST** be included.
