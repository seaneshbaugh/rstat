Dir["#{File.dirname(__FILE__)}/descriptive_statistics/*.rb"].sort.each do |path|
  require "rstat/core_ext/array/descriptive_statistics/#{File.basename(path, '.rb')}"
end
