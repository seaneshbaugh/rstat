require 'spec_helper'

describe Rstat do
  describe '.binomial_coefficient' do
    it 'computes the binomial coeffecient of itself and another number' do
      expect(10.binomial_coefficient(4)).to eql(210)

      expect(50.binomial_coefficient(34)).to eql(4_923_689_695_575)
    end
  end
end
