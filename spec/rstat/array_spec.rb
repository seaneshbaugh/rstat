require 'spec_helper'

describe Rstat do
  describe '.sum' do
    it 'calculates the sum of an array' do
      expect([1, 2, 3, 4, 5, 6].sum).to eql(21)
    end
  end

  describe '.product' do
    it 'calculates the product of an array' do
      expect([1, 2, 3, 4, 5, 6].product).to eql(720)
    end
  end

  context 'Location' do
    describe '.mean' do
      it 'calculates the mean of an array' do
        expect([1, 2, 3, 4, 5].mean).to be_within(0.0001).of(3.0000)
      end
    end

    describe '.geometric_mean' do
      it 'calculates the geometric mean of an array' do
        expect([1, 2, 3, 4, 5].geometric_mean).to be_within(0.0001).of(2.6052)
      end

      it 'calculates the geometric mean of an array with a zero element' do
        expect([0, 2, 3, 4, 5].geometric_mean).to eql(0.0)
      end

      if Integer.method_defined?(:real?)
        it 'calculates the geometric mean of an array with a negative element' do
          expect([-1, 2, 3, 4, 5].geometric_mean.real?).to be(false)
        end
      else
        it 'should return NaN when calculating the geometric mean of an array with a negative element' do
          expect([-1, 2, 3, 4, 5].geometric_mean.nan?).to be(true)
        end
      end
    end

    describe '.harmonic mean' do
      it 'calculates the harmonic mean of an array' do
        expect([1, 2, 3, 4, 5].harmonic_mean).to be_within(0.0001).of(2.1897)
      end
    end

    describe '.power_mean' do
      it 'power_mean(2) should equal quadratic_mean' do
        p = [1, 2, 3, 4, 5].power_mean(2)
        q = [1, 2, 3, 4, 5].quadratic_mean

        expect(p).to eql(q)
      end
    end

    it 'AM > GM > HM' do
      a = [1, 2, 3, 4, 5]

      am = a.arithmetric_mean
      gm = a.geometric_mean
      hm = a.harmonic_mean

      expect(am).to be > gm
      expect(gm).to be > hm
    end

    describe '.median' do
      it 'calculates the median of an array with an odd number of elements' do
        expect([2, 3, 5, 1, 4].median).to eql(3)
      end

      it 'calculates the median of an array with an even number of elements' do
        expect([2, 3, 5, 1, 4, 6].median).to eql(3.5)
      end
    end

    describe '.mode' do
      it 'calculates the mode of an empty array' do
        expect([].mode).to eql([])
      end

      it 'calculates the mode of an array with one element' do
        expect([100].mode).to eql([100])
      end

      it 'calculates the mode of an unimodal array' do
        expect([1, 1, 1, 2, 3, 4, 5, 5, 6].mode).to eql([1])
      end

      it 'calculates the mode of a bimodal array' do
        expect([44, 45, 46, 44, 46, 50].mode).to eql([44, 46])
      end
    end
  end

  context 'Dispersion' do
    describe '.range' do
      it 'finds the range of an array' do
        expect([0, 34, 656, 400, 1000].range).to eql(1000)
      end
    end

    describe '.standard_deviation' do
      it 'calculates the standard deviation of an array' do
        expect([1, 2, 3, 4, 5, 6].standard_deviation).to be_within(0.00001).of(1.70783)
      end
    end

    describe '.coefficient_of_variation' do
      it 'calculates the coefficient of variation of an array' do
        expect([1, 2, 3, 4, 5, 6].coefficient_of_variation).to be_within(0.00001).of(0.48795)
      end
    end

    describe '.percentile' do
      it 'finds the 30th percentile of an array' do
        expect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].percentile(30)).to eql(3)
      end

      it 'finds the 50th percentile of an array' do
        expect([1, 2, 3, 4, 5].percentile(50)).to be(3)
      end

      it 'finds the 10th percentile of an array' do
        expect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17].percentile(10)).to be(2)
      end
    end

    describe '.interquartile_range' do
      it 'finds the interquartile range of an array' do
        expect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].interquartile_range).to be(5)
      end
    end
  end

  context 'Shape' do
    describe '.central_moment' do
      it 'calculates the 0th central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].central_moment(0)).to be_within(0.00001).of(1.0)
      end

      it 'calculates the 1st central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].central_moment(1)).to be_within(0.00001).of(0.0)
      end

      it 'calculates the 2nd central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].central_moment(2)).to be_within(0.00001).of(3459.44000)
      end

      it 'calculates the 3rd central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].central_moment(3)).to be_within(0.00001).of(321046.00800)
      end

      it 'calculates the 4th central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].central_moment(4)).to be_within(0.00001).of(56245095.69920)
      end
    end

    describe '.raw_moment' do
      it 'calculates the 0th central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].raw_moment(0)).to be_within(0.00001).of(1.0)
      end

      it 'calculates the 1st central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].raw_moment(1)).to be_within(0.00001).of([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].mean)
      end

      it 'calculates the 2nd central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].raw_moment(2)).to be_within(0.00001).of(5612.40000)
      end

      it 'calculates the 3rd central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].raw_moment(3)).to be_within(0.00001).of(902497.40000)
      end

      it 'calculates the 4th central moment of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].raw_moment(4)).to be_within(0.00001).of(165154687.20000)
      end
    end

    describe '.variance' do
      it 'calculates the variance of an array' do
        expect([1, 2, 3, 4, 5, 6].variance).to be_within(0.00001).of(2.91667)
      end
    end

    describe '.skewness' do
      it 'finds the skewness of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].skewness).to be_within(0.00001).of(1.57782)
      end
    end

    describe '.kurtosis' do
      it 'finds the kurtosis of an array' do
        expect([2, 43, 5, 65, 56, 7, 85, 3, -1, 199].kurtosis).to be_within(0.00001).of(1.69973)
      end
    end
  end

  context 'Count Data' do
    describe '.index_of_dispersion' do
      it 'finds the index of dispersion of an array' do
        expect([1, 2, 3, 4, 5, 6].index_of_dispersion).to be_within(0.00001).of(0.83333)
      end
    end
  end
end
