# Textext Rails

Brings the [jQuery TextExt plugin](http://textextjs.com/) into the Rails asset pipeline.  The TextExt asset files are from the TextExt [1.2.0 release](https://github.com/alexgorbatchev/jquery-textext/tree/1.2.0).

## Installation

Add this line to your `Gemfile`:

```ruby
gem 'textext-rails'
```

Then in your `app/assets/javscipts/application.js` file, include the core JS file plus any other TextExt plugins you need.

```javascript
//= require textext.core
//= require textext.plugin.tags
```

Then, add the core CSS plus any plugins you need to your `app/assets/stylesheets/application.css.scsss` file:

```css
*= require textext.core
*= require textext.plugin.tags
```

That's it!  Please see the [TextExt manual](http://textextjs.com/manual/index.html) and [Github page](https://github.com/alexgorbatchev/jquery-textext) for further usage information.

## License

MIT licensed.  Please see the LICENSE file for more information.