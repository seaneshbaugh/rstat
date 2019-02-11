# Rstat

[![Gem Version](https://badge.fury.io/rb/rstat.svg)](https://badge.fury.io/rb/rstat)
[![Travis](https://travis-ci.org/seaneshbaugh/rstat.svg?branch=master)](https://travis-ci.org/seaneshbaugh/rstat)

A very simple statistics gem.

## Installation

    $ gem install rstat

## Usage

```ruby
require 'rstat'
 => true
[1, 2, 3, 4, 5].mean
 => 3.0
```

## Currently Adds

### Arithmetic

* Sum
* Product
* Binomial Coefficient

### Descriptive Statistics

#### Location

* Arithmetic Mean
* Geometric Mean
* Harmonic Mean
* Power Mean
* Median
* Mode

#### Dispersion

* Range
* Standard Deviation
* Coefficient of Variation
* Percentile
* Interquartile Range

#### Shape

* Variance
* Skewness
* Kurtosis
* Central Moments
* Raw Moments

#### Count Data

* Index of Dispersion

### Regression Analysis

#### Linear Regression

* Simple Linear Regression

## Running Tests

Rstat depends upon RSpec for its tests.

To run all the tests for the gem:

    $ rspec spec

To run one particular spec file:

    $ rspec spec/rstat/array_spec.rb

To run one particular line of a spec file:

    $ rspec spec/rstat/array_spec.rb:177

Rstat has been tested with Ruby 2.6.1. However, there's little reason it shouldn't work with other versions of Ruby as old as 2.0.0.

## Console

Rstat includes a binstub to open up an IRB session with the gem preloaded. This is particularly useful if you're working with a local development copy of the gem's source and want to experiment with your changes. To use the preloaded console:

    $ bin/console

## Contributing

If you feel like you can add something useful to Rstat then don't hesitate to send a pull request.

## A Few Words of Caution

This gem extends the core Array and Integer classes. In isolation this is usually pretty harmless. But, in combination with other gems that do the same, unpredictable behavior may result. As always, use caution, and be aware of what this gem and any others you use actually do before including it in an important project.

Addtionally, this gem makes no effort to coerce values to any kind of `Numeric` so obviously it'll raise all sorts of errors if your data does not consist only of numbers. (TODO: Add custom exception classes for this.)
