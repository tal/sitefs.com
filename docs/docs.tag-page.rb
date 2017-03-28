page = new_page
page.title = "Docs"
page.href = 'index'
page.attributes.doc_pages = pages_tagged('page-doc', all: true)
page.attributes.how_to_pages = pages_tagged('how-to-doc', all: true)

render page, with: '_doc_list.html.erb'
