# encoding: utf-8
require 'spec_helper'

describe Rstat do
  describe ".binomial_coefficient" do
    it "computes the binomial coeffecient of itself and another number" do
      10.binomial_coefficient(4).should eq(210)

      50.binomial_coefficient(34).should eq(4_923_689_695_575)
    end
  end
end