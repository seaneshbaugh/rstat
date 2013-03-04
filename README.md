# Rstat

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

Rstat has been tested with Ruby 1.8.7 and 1.9.3. There's little reason it shouldn't work with other versions of Ruby though.

## Console

Rstat includes a rake task to open up an irb session with the gem source preloaded. This is particularly useful if you're working with a local development copy of the gem's source and want to experiment with your changes. To use the preloaded console:

    $ rake console

## Contributing

If you feel like you can add something useful to Rstat then don't hesitate to send a pull request.


## A Note of Warning

This gem extends the core Array class and Fixnum class. In isolation this is usually pretty harmless. But, in combination with other gems that do the same, unpredictable behavior may result. As always, use caution, and be aware of what this gem and any others you use actually do before including it in an important project.
