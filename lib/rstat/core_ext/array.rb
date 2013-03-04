Dir["#{File.dirname(__FILE__)}/array/*.rb"].sort.each do |path|
  require "rstat/core_ext/array/#{File.basename(path, '.rb')}"
end
