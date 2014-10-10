# datatables-rails [![Gem Version](https://badge.fury.io/rb/datatables-rails.svg)](http://badge.fury.io/rb/datatables-rails)

The `datatables-rails` gem packages the [jQuery DataTables](http://www.datatables.net/) assets for easy inclusion in an Rails >= 3.1 application using the asset pipeline.

The MAJOR, MINOR and PATCH version numbers of this gem will follow the version numbers of jQuery DataTables. The fourth version number will be increased for changes unrelated to the assets themselves.

## Installation

To use this gem you need to include [jQuery](http://jquery.com/) in your applications's javascript.
To do so you may use the [jquery-rails gem](https://github.com/rails/jquery-rails).


Add this line to your application's `Gemfile`:

```
gem 'datatables-rails', '~> 1.10.3.0'
```

And then execute:

    $ bundle install

## Usage
### JavaScripts

Include the JavaScript in your `app/assets/javascripts/application.js`:

     //= require datatables/jquery_datatables
    
Make sure you add the line after the inclusion of jQuery (` //= require jquery`).

### Stylesheets
    
Include the stylesheet in your `app/assets/stylesheets/application.css`:

     *= require datatables/jquery_datatables

### Initialization

Where needed in your JavaScripts, initialize your DataTables:

```
$(document).ready(function() {
  $("#mytable").dataTable();
});
```

## Contributing

1. [Fork it]( https://github.com/svkurowski/datatables-rails/fork)
2. Commit your changes (`git commit -am 'My Changes'`)
3. Push your changes (`git push origin`)
5. Create a new Pull Request
