# Allpurpose

Ruby client for the [All Purpose Removals and Storage](http://www.allpurposeremovals.com.au) freight API.

## Installation

Add this line to your application's Gemfile:

```
gem 'allpurpose'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install allpurpose
```

## Usage

Obtaining a quote from All Purpose, you will need to pass in the destination suburb name, destination post code and volume of your items that you want shipped.

All Purpose API assumes that your items will be picked up from the Brisbane Metro area only so there is no need to define pickup destination.

Here is an example of getting a quote from All Purpose ...

```
suburb = 'Brisbane Market'
post_code = 4106	# post code for Brisbane Market
volume = 1.58

ap = Allpurpose::Quote.quote(suburb, post_code, volume)
puts ap.amount
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
