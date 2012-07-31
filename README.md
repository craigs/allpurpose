# Allpurpose

Ruby client for the All Purpose Removals and Storage freight API.

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

To get a quote from All Purpose, you will need to pass in the suburb name, post code and volume of your items that you want shipped.

So, to get a quote to get your items with a volume of 1.58 cubic meters delivered to Brisbane Market, post code 4106, you would do ...

```
ap = Allpurpose::Quote.quote('Brisbane Market', 4106, 1.58)
puts ap.amount
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
