Dir["#{File.dirname(__FILE__)}/integer/*.rb"].sort.each do |path|
  require "rstat/core_ext/integer/#{File.basename(path, '.rb')}"
end
