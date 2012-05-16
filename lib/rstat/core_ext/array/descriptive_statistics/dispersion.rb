Dir["#{File.dirname(__FILE__)}/dispersion/*.rb"].sort.each do |path|
  require "rstat/core_ext/array/descriptive_statistics/dispersion/#{File.basename(path, ".rb")}"
end
