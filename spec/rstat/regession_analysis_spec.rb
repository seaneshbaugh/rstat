# encoding: utf-8
require 'spec_helper'

describe Rstat do
  describe '.sample_correlation_coefficient' do
    it 'computes the sample correlation coefficient of two arrays' do
      Rstat.sample_correlation_coefficient([1, 2, 3, 4, 5], [6, 7, 8, 9, 10]).should be_within(0.00001).of(1.0)

      Rstat.sample_correlation_coefficient([1, 2, 3, 4, 5], [5, 4, 3, 8, 1]).should be_within(0.00001).of(-0.24434)

      Rstat.sample_correlation_coefficient([2345, 43, 346, 45, -4234], [354, 66, 100, 443, 655]).should be_within(0.00001).of(-0.59889)
    end
  end

  describe '.simple_linear_regression' do
    it 'should return a Hash with the slope and intercept of the linear regression equation for two arrays' do
      result  = Rstat.simple_linear_regression([60, 61, 62, 63, 65], [3.1, 3.6, 3.8, 4, 4.1])

      result.class.should eq(Hash)

      result[:slope].should be_within(0.00001).of(0.18784)

      result[:intercept].should be_within(0.00001).of(-7.96351)
    end
  end

  describe '.simple_linear_regression_slope' do
    it 'should return the slope of the linear regression equation for two arrays' do
      Rstat.simple_linear_regression_slope([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]).should be_within(0.00001).of(1.0)

      Rstat.simple_linear_regression_slope([60, 61, 62, 63, 65], [3.1, 3.6, 3.8, 4, 4.1]).should be_within(0.00001).of(0.18784)
    end
  end

  describe '.simple_linear_regression_intercept' do
    it 'should return the slope of the linear regression equation for two arrays' do
      Rstat.simple_linear_regression_intercept([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]).should be_within(0.00001).of(0.0)

      Rstat.simple_linear_regression_intercept([60, 61, 62, 63, 65], [3.1, 3.6, 3.8, 4, 4.1]).should be_within(0.00001).of(-7.96351)
    end
  end
end
