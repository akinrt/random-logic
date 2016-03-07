# RandomLogic

A random logic module provide various randomise calculation.
The japanese article written by ICS [JavaScript開発に役立つ重要なランダムの数式まとめ](https://ics.media/entry/11292) inspired me to write RandomLogic gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'random_logic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_logic

## Fearures

Easy to use random logic.

## Usage

**Inverse value**

```ruby
RandomLogic.inverse(rand)
```


**Random number of addition**  
 Bias the value in the center

```ruby
RandomLogic.add
```

**Random number of multiplication**  
Bias the value near 0

```ruby
RandomLogic.multiply
```

**Inversion of random number of multiplication**  
Bias the value near 1
```ruby
RandomLogic.multiply_inverse
```

**The square of the random number**  
Further increasing the proportion of the value near 0

```ruby
RandomLogic.square
```

**Inversion of the square of the random number**  
Further increasing the proportion of the value near 1

```ruby
RandomLogic.square_inverse
```

**Random number of square root**  
Increase linearly frequency of occurrence from 0.0 to 1.0.

```ruby
RandomLogic.sqrt
```

**Inversion of random number of square root**  
Increase linearly frequency of occurrence from 1.0 to 0.0.

```ruby
RandomLogic.sqrt_inverse
```

**Normal random number**

```ruby
RandomLogic.normal
```

**Normal random with re-try logic when the random value was lower than 0 or higher than 1**

```ruby
RandomLogic.normal_rand
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/akinrt/random_logic.
