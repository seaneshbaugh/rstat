Dir["#{File.dirname(__FILE__)}/location/*.rb"].sort.each do |path|
  require "rstat/core_ext/array/descriptive_statistics/location/#{File.basename(path, ".rb")}"
end
