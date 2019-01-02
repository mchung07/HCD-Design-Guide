# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end
helpers do
  def is_page_selected(page)
    if current_page.url == page
      return ' class="usa-current"'
    end
    case page
    when '/designphase.html'
      if current_page.url == "/team.html" || current_page.url == "/participants.html" || current_page.url == "/publicsector.html" || current_page.url == "/designchange.html"
        return ' class="usa-current"'
      end
    when '/communicatingideas.html'
      if current_page.url == "/envisioning.html" || current_page.url == "/ideation.html" || current_page.url == "/iteration.html" || current_page.url == "/feedback.html"
        return ' class="usa-current"'
      end
    end
    return ''
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
