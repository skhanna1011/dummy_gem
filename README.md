# Dummy Gem

Service to consume MrMrsSmith api's

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dummy_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dummy_gem

## Usage

### Configuration

Add file config/initializers/mr_mrd_smith_service with your user_name and private_key
```ruby
    DummGem.configure do |config|
      Your Configuration
    end
```
Define usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dummy_gem.
