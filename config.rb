require "bundler/setup"
Bundler.require

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
sprockets.append_path '/vendor'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

helpers do
  def ary_in_groups_of(ary, number, fill_with = nil)
    if fill_with == false
      collection = ary
    else
      padding = (number - ary.size % number) % number
      collection = ary.dup.concat(Array.new(padding, fill_with))
    end

    collection.each_slice(number).to_a
  end
end
