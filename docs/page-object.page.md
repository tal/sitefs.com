---
tags:
- doc
- page-doc
abstract: The object that represents a page, used thoughoug layouts for reading data and in ruby pages for generating them.
---

# Page object
## Used to programattically create

## Properties

### `path`
the full path for page starting with `/`

### `path=`
define the full location for the file relative to the root, always start with `/`

### `href`
the minimum file name relative to where it exists or is being generated. eg: for `/foo/bar` it will be `bar`

### `href=`
Common way when building pages dynamically to define it's name. eg setting to `index` from within a
ruby generator will make `index.html` in the same directory as the generator

### `tags`
An array of strings that are every tag that the post has.

### `tags << 'tag'`
Add a tag to the post, if you prefix the tag with `_` it will not be included in `public_tags`. The purpose
for private tags is for interanl organization of pages that you don't want exposed.

### `public_tags`
An array of all tags that don't start with `_`. Filters out any tags you may use for internal organization

### `attributes.key` or `['key']`
Arbitrary values that can be stored in the page for later rendering or organization.

### `published_at`
If a date is set the page will show up when querying for all tags. Useful to store drafts.
