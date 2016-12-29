require 'dotenv'
Dotenv.load

activate :directory_indexes

set :haml, { ugly: true, format: :html5 }

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true,
               layout_engine: :haml,
               layout: :layout,
               no_intra_emphasis: true,
               footnotes: true

configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true
set :http_prefix, '/sicpdistilled'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash

end
