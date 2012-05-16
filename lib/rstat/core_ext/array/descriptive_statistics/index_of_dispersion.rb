class Array
  def index_of_dispersion
    self.variance / self.mean
  end

  def dispersion_index
    self.index_of_dispersion
  end

  def coefficient_of_dispersion
    self.index_of_dispersion
  end

  def variance_to_mean_ratio
    self.index_of_dispersion
  end

  def vmr
    self.index_of_dispersion
  end

  def fano_factor
    self.index_of_dispersion
  end
end