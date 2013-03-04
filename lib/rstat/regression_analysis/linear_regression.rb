Dir["#{File.dirname(__FILE__)}/linear_regression/*.rb"].sort.each do |path|
  require "rstat/regression_analysis/linear_regression/#{File.basename(path, '.rb')}"
end
