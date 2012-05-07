# encoding: utf-8
require 'spec_helper'

describe Rstat do
  describe ".sum" do
    it "calculates the sum of an array" do
      [1, 2, 3, 4, 5, 6].sum.should be(21)
    end
  end

  describe ".product" do
    it "calculates the product of an array" do
      [1, 2, 3, 4, 5, 6].product.should be(720)
    end
  end

  describe ".range" do
    it "finds the range of an array" do
      [0, 34, 656, 400, 1000].range.should be(1000)
    end
  end

  describe ".mean" do
      it "calculates the mean of an array" do
        [1, 2, 3, 4, 5].mean.should be_within(0.0001).of(3.0000)
      end
  end

  describe ".geometric_mean" do
    it "calculates the geometric mean of an array" do
      [1, 2, 3, 4, 5].geometric_mean.should be_within(0.0001).of(2.6052)
    end

    it "calculates the geometric mean of an array with a zero element" do
      [0, 2, 3, 4, 5].geometric_mean.should eql(0.0)
    end

    it "calculates the geometric mean of an array with a negative element" do
      [-1, 2, 3, 4, 5].geometric_mean.real?.should be_false
    end
  end

  describe ".harmonic mean" do
    it "calculates the harmonic mean of an array" do
      [1, 2, 3, 4, 5].harmonic_mean.should be_within(0.0001).of(2.1897)
    end
  end

  describe ".power_mean" do
    it "power_mean(2) should equal quadratic_mean" do
      p = [1, 2, 3, 4, 5].power_mean(2)
      q = [1, 2, 3, 4, 5].quadratic_mean

      p.should eql(q)
    end
  end

  it "AM > GM > HM" do
    a = [1, 2, 3, 4, 5]
    am = a.arithmetric_mean
    gm = a.geometric_mean
    hm = a.harmonic_mean

    am.should be > gm
    gm.should be > hm
  end

  describe ".median" do
    it "calculates the median of an array with an odd number of elements" do
      [2, 3, 5, 1, 4].median.should eql(3)
    end

    it "calculates the median of an array with an even number of elements" do
      [2, 3, 5, 1, 4, 6].median.should eql(3.5)
    end
  end

  describe ".mode" do
    it "calculates the mode of an empty array" do
      [].mode.should eql([])
    end

    it "calculates the mode of an array with one element" do
      [100].mode.should eql([100])
    end

    it "calculates the mode of an unimodal array" do
      [1, 1, 1, 2, 3, 4, 5, 5, 6].mode.should eql([1])
    end

    it "calculates the mode of a bimodal array" do
      [44, 45, 46, 44, 46, 50].mode.should eql([44, 46])
    end
  end

  describe ".standard_deviation" do
    it "calculates the variance of an array" do
      [1, 2, 3, 4, 5, 6].variance.should be_within(0.00001).of(2.91667)
    end

    it "calculates the standard deviation of an array" do
      [1, 2, 3, 4, 5, 6].standard_deviation.should be_within(0.00001).of(1.70783)
    end

    it "calculates the coefficient of variation of an array" do
      [1, 2, 3, 4, 5, 6].coefficient_of_variation.should be_within(0.00001).of(0.48795)
    end
  end
end
