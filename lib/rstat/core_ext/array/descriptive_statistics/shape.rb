Dir["#{File.dirname(__FILE__)}/shape/*.rb"].sort.each do |path|
  require "rstat/core_ext/array/descriptive_statistics/shape/#{File.basename(path, ".rb")}"
end
