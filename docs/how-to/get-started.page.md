---
tags: ['doc', 'how-to-doc']
abstract: |
  Get started on building your homepage.
---

# Getting Started
Want to just make an index page at the root?

## Layout

The first thing you need is a layout. This is the frame that everything else gets rendered into.

Make a file in the root folder named `_layout.html.erb`

```erb
<!DOCTYPE html>
<html>
<head>
  <title><%= current_page && current_page.title %> | MySite</title>
  <link rel="stylesheet" type="text/css" href="/styles/app.css" />
</head>
<body>
  <nav class="nav">
    <h1><a href="/">My Site</a></h1>
  </nav>

  <section class="container <%= yield :container_class %>">
    <%= yield %>
  </section>
</body>

</html>
```

## Index page

You can make a generic html page that will be rendered into the above layout. Any file with a `.page`
extension setup it will be rendered. The extensions supported currently are `.html.erb` and `.md`.

To start with your homepage we'll make an `index.html.erb` file:

```erb
<% content_for :container_class, 'homepage' %>
<h1>My Homepage!</h1>
<p>Some Content</p>
```

The layout will automatically extract the title from the `<h1>` tag. You can manually set attributes
from within the template if you want.

```erb
<% current_page.attributes['title'] = "My Special Title" %>
<h1>My Homepage!</h1>
<p>Some Content</p>
```

## Markdown Page
You can also make markdown pages, check out the docs [here](../markdown).

## CSS

A sass processor is built in, any `.sass` file will automatically be compiled with a sourcemap.
