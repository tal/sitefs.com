---
tags: ['doc', 'page-doc']
abstract: |
  Markdown pages are a great way to quickly build content pages that
  are easy to read. You even get special layout tools just for them!
---

# Markdown Pages

Markdown pages let you generate pages using markdown. They generate [page objects](/docs/page-object)
and have their attributes set by an optional yaml block on the top of the file.

## Attribute block

You can set the attributes of the page via a block of YAML at the top of the file. If you place a
`---` on the first line, anything between that and the next `---` will get parsed by as yaml and
set as atributes.

Some examples of built in features are setting `published` to any date or datetime string that YAML
supports will publish the document to that date.

`tags` is also a standard YAML array that you can use.

```yaml
---
published: 2016-12-21 10:00 EST
tags:
- _blog post
- apple
- review
- AppleTV
---

# My review of the new AppleTV
Lorem ipsum...
```

### Markdown page templates

Because often the content of a blog post or whatever you're trying to output from markdown
will need extra chrome around it (to show what tags it has, it's publishing date, etc),
markdown pages have templates that they use in addition to the standard templates.

Read up on [how templates work](/docs/templates) in general because the markdown layouts work the same
way. The only difference is that if you have a `_layout.md.html.erb` file the page will be rendered
within that before it's passed off to the standard set of templates.
