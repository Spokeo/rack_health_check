# HealthCheck

This will add a basic health check to your ruby Application.  Given a request to '/health_check' it should return a basic 200.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'health_check'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install health_check

## Non-Rails Environment Setup
  In a non-rails environment simply add RackHealthCheck::Middleware to your middlewares


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/health_check. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## TODO:

I would like to add multiple health checks that check different things.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
