---
tags:
- doc
- page-doc
abstract: The quickest way to make a page, just make an html.erb file and use the templating engine to render the page within your layout.
---

# Single Page

The quickest way to make a page, just make an html.erb file and use the templating engine to render the page within your layout.

Any file that ends in `.page.html.erb` will automatically generate a published [page object](/docs/page-object) with the tag `_single`.
The published date is the creation date of the file.

You can add tags or change the published date from within the template:

```erb
<% current_page.tags << 'my tag' %>
<% current_page.tags << 'my other tag' %>
<% current_page.published_at = Time.now %>
```
