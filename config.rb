activate :syntax

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


configure :development do
  activate :livereload
end

caching_policy 'text/html', max_age: 0, must_revalidate: true
default_caching_policy max_age:(60 * 60 * 24 * 365)

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash do |opts|
    opts.exts += %w(.ico)
  end
  activate :gzip do |opts|
    opts.exts = %w(.html .htm .js .css .jpg)
  end
end
