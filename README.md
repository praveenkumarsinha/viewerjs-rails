# Viewerjs::Rails

This gem packages the Viewerjs assets (JavaScripts, stylesheets, and images) for the Rails [asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html), so you never have to download a custom package through the [web interface](http://viewerjs.org/getit/) again.

See [VERSIONS.md](VERSIONS.md) to see which versions of viewerjs-rails bundle.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'viewerjs-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install viewerjs-rails

## Usage

Load viewerjs from rails assets manifest file.
Add the following to your application.js:

```javascript
//= require viewerjs_rails
```

Add the following to your application.css:

```css
/*
 *= require viewerjs_rails
 */
```

Add helper to embed blank viewer in specific controller's view:

```rb
  <%= viewerjs_viewer %>
```

And visit the page with static pdf path in reference after #. Please note that changing pdf path after # in url will not
refresh the page (from its current content) so better to add some random querystring or do hard reset like (Ctrl+F5 or Command+R):

```html
http://localhost:3000/#test.pdf
http://localhost:3000/?1=2#test.pdf
```

## Contributing

1. Fork it ( https://github.com/praveenkumarsinha/viewerjs-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Limitations

*   Only pdf can be viewed in browser for the time being. Once it becomes possible to load doc or odt file will package
    them here in this gem.
