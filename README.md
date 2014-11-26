# UpdateCountersWithCondition

update counters with condition

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'update_counters_with_condition'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install update_counters_with_condition

## Usage

```ruby
ProductStock.update_counters_with_condition({:product_id => Product.first.id, :warehouse_id => Warehouse.first.id}, :quantity => 1)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/update_counters_with_condition/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
