---
tags:
- doc
- page-doc
abstract: Just like ruby pages, but run at the end of the process. Used for building pages that list all of the pages for a tag.
---

# Tag Pages

Tag pages are just like []

```ruby
public_tags.each do |tag|
  page = new_page
  page.title = "Tagged #{tag}"
  page.href = tag
  page.attributes.tag = tag

  render page, with: '_tag_layout.html.erb'
end
```
