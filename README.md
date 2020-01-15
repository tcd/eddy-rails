# Eddy::Rails

[![Gem](https://img.shields.io/gem/v/eddy-rails)][rubygems]
[![Build Status](https://travis-ci.org/tcd/eddy-rails.svg?branch=master)][travis-ci]
[![Coverage Status](https://coveralls.io/repos/github/tcd/eddy-rails/badge.svg?branch=master)][coveralls]
[![License](https://img.shields.io/github/license/tcd/eddy)][license]
[![Documentation](http://img.shields.io/badge/docs-rubydoc.info-blue.svg)][docs]

[rubygems]: https://rubygems.org/gems/eddy-rails
[travis-ci]: https://travis-ci.org/tcd/eddy-rails
[coveralls]: https://coveralls.io/github/tcd/eddy-rails?branch=master
[license]: https://github.com/tcd/eddy-rails/blob/master/LICENSE
[docs]: https://www.rubydoc.info/gems/eddy-rails/1.1.0

Rails integration for [Eddy](https://github.com/tcd/eddy).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "eddy"
gem "eddy-rails"
```

Next, you need to copy & run the migration:

```sh
$ rails eddy:install # This will do both
```

Then, optionally, generate an initializer file:

```sh
$ rails generate eddy:initializer # This will do both
```
