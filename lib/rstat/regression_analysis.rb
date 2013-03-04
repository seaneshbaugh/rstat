Dir["#{File.dirname(__FILE__)}/regression_analysis/*.rb"].sort.each do |path|
  require "rstat/regression_analysis/#{File.basename(path, '.rb')}"
end
