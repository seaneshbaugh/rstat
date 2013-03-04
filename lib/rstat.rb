Dir["#{File.dirname(__FILE__)}/rstat/*.rb"].sort.each do |path|
  require "rstat/#{File.basename(path, '.rb')}"
end

module Rstat
end
