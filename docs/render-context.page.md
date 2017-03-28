---
tags:
- doc
- page-doc
abstract: The context with which all layouts are rendered. Helpers and methods used to help build your pages.
---

# Render Context

Whenever you're inside of a layout `.html.erb` file the scope gives you access to several methods and helpers.

### `current_page`

This is either `null` or a [page object](/docs/page-object). If present it's alway set to the item being currently rendered.

### `public_tags`

All of the tags that don't start with `_` on any page registered. Useful for rendering tag clouds or nav to all tags.

### `pages_tagged 'tag'` or `pages_tagged 'tag', all: true`

Returns any pages with the given tag, public or private (prfixed with `_`). By default only returns pages that have been
marked as published by setting the `published_at` attribute of the [page object](/docs/page-object). If you set `all: true` the
method returns all pages tagged that value, regardless of whether it was published or not.

### `is_root!`

If you call this inside the template it will make sure that this is the last template rendered. Useful if you want to have
a completely different layout for different pages or sections of the site.

### `content_for`

You can pass values higher up the layout chain, if another layout calls `<%= yield :value %>` you can populate this by either
calling `content_for :value, 'some value'` or using the block syntax

```erb
<% content_for :header do %>
  <script src="//google.com/my-script.js"></script>
<% end %>
```
