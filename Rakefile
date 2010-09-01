require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('soft_delete', '0.1.0') do |p|
  p.description    = "Overwrites default destroy behaviour by setting a deleted_at field."
  p.url            = "http://github.com/smoku/soft_delete"
  p.author         = "Paweł Smoczyk"
  p.email          = "pawel@smoczyk.pl"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
