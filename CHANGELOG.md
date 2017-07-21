## v0.2.0
* Minimum required Ruby version is now 2.0.0.
* Changed all references to Fixnum to Integer.
* Use slightly more modern gemspec.
* Added rubocop and simplecov as development dependencies.
* Added bin/console script and removed console task from Rakefile.

## v0.1.2
* Use inject(:\*) rather than inject(1, &:\*) for binomial_coefficient.
* Fixed some tests to work with 1.8.7."

## v0.1.1

* Made rstat.rb load all files automatically instead of listing them manually.
* Updated readme.
* Added sample correlation coefficient.
* Added simple linear regression.

## v0.1.0

* Major reorganization! All files now in directories named after their corresponding discipline (as sort of defined by Wikipedia).
* Added skewness.
* Added kurtosis.
* Mean methods now now use the sum method.
* Minor reorganization of tests.
* Changed Gemfile source to https.
* Added index of dispersion.

## v0.0.4

* Added percentile.
* Added interquartile range.

## v0.0.3

* Better mode algorithm.
* Fixed geometric mean test to test for realness instead of NaN because Ruby 1.9+ returns complex number instead of NaN when there's negative numbers in the set.
* Made array.rb load all files automatically instead of listing them manually.
* Added sum.
* Added product.
* Added range.
* Added coefficient of variation.

## v0.0.2

* Added standard deviation.

## v0.0.1

* Initial release.
