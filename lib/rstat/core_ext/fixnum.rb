Dir["#{File.dirname(__FILE__)}/fixnum/*.rb"].sort.each do |path|
  require "rstat/core_ext/fixnum/#{File.basename(path, ".rb")}"
end
