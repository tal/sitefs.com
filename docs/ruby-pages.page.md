---
tags:
- doc
- page-doc
abstract: Use code to powerfully build pages out. Access the file system or read json/yaml to build out pages in any way you need or want.
---

# Ruby page

Ruby pages are any page with the `.page.rb` suffix. They're very powerful for generating arbitrary
pages.

```ruby
permalink_pages = files_like('*.{jpg,jpeg,png}').map do |image_path|
  page = new_page
  page.title = "Image - #{File.basename(image_path)}"
  page.tags << 'image permalink'
  page.href = File.basename(image_path)
  page.published_at = File.birthtime(image_path)
  page.attribues.image_path = image_path

  render page, with: '_permalink.html.erb'
end

page = new_page
page.title = "Image Gallery"
page.href = 'index'
page.attribues.images = permalink_pages
render page, with: '_gallery.html.erb'
```

This example starts with a helper that gets all the images in the folder. `files_like` returns an array of
image paths.

- `new_page` returns a new [page object](/docs/page-object) for you to build your new page.
- The birthtime is when the file was created, published date is used for sorting pages when they're accessed
- Setting the image path on attributes is a way to pass it down to the view.
- The href is the neame of the file to output
- Finally the page is rendered into the supplied template.

Since it's just code, you can also render the index page that is a gallary of all the images in the folder.

## Ruby page methods

### `files_like(matcher)`

Returns an array of file paths that match the matcher. It only matches files in this folder or below. The matcher
can be either in the [ruby glob format](https://ruby-doc.org/core-2.3.0/Dir.html#method-c-glob) or a regex.

### `new_page`

Generates a new [page object](/docs/page-object) for you to use. This kinda sucks and I hope to fix it soon.

### `render page, with: template`

This causes the page to be rendered with the given template. The template is a string that's a relative path to an
`html.erb` file. Check out the docs for the [render context](/docs/render-context) to see what variables you have within
the template.