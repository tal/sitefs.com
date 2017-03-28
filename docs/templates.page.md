---
tags:
- doc
- page-doc
abstract: Templates provide a way of nesting your html to allow for shared layouts in any nested way you want.
---

# Templates

Templates go up the folder tree picking up any file named `_template.html.erb` starting with any sibling to the specified file.

Starting with the template closest to the root the template will nest sub templates or rendered pages using the `<%= yield %>`
method. You can also `yield :variable` to allow other templates to hoist values into their parent, documentation is in
[render-context](/docs/render-context).

## Examples

Often the root template may be something like this `_layout.html.erb`:

```erb
<!DOCTYPE html>
<html>
<head>
  <% if current_page %>
    <title><%= current_page.title %> | SiteFS</title>
  <% else %>
    <title>SiteFS</title>
  <% end %>
  <link rel="stylesheet" type="text/css" href="/styles/app.css" />

  <%= yeild :head %>
</head>
<body>
  <div class="content">
    <%= yield %>
  </div>
</body>
```

Maybe everything inside of the docs folder should have a search bar `docs/_layout.html.erb`:

```erb
<nav class="dac-sidebar">
  <input type="search" />
  <div class="typeahead"></div>
</nav>
<div class="doc-result">
  <%= yield %>
</div>
```

This template would be rendered where the yield in the above template is called. Any pages
in the `docs` folder or below will be rendered into where the yield in this template is.
