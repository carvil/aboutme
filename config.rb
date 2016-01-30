activate :syntax

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


configure :development do
  activate :livereload
end

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

activate :relative_assets
set :relative_links, true
