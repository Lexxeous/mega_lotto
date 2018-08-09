# <img src="assets/images/lexx_headshot_clear.png" width="100px"/> Lexxeous's MegaLotto <img src="assets/images/mega_millions.png" width="100px" height="62"/>

![License](https://camo.githubusercontent.com/890acbdcb87868b382af9a4b1fac507b9659d9bf/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d626c75652e737667)

MegaLotto is a Ruby gem built via the free "Build a Ruby Gem" email tutorial course provided by [Brandon Hilkert](https://brandonhilkert.com/). This repository was created simply as my interpretation of the project. I claim no affiliation or ownership of any code contained within this repository.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "mega_lotto_benchmark", "~> 1.0"
```

And then execute:

```sh
$ bundle
```

Or install it yourself with:
```sh
$ gem install mega_lotto_benchmark
```

## Usage

Main Ruby code is located in the `lib/mega_lotto` file. Supporting files are located in neighboring files within the `lib/` directory. To experiment with this code, run `bin/console` for an interactive prompt.<br>

This gem also includes benchmarks for 3 different way of generating the array of random MegaLotto numbers. This shows the difference of computational speed for a few different Ruby methods.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Run `rake spec`, `rspec spec`, or simply `rspec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Lexxeous/mega_lotto. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MegaLotto project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Lexxeous/mega_lotto/blob/master/CODE_OF_CONDUCT.md).
