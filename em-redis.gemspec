version = File.read("VERSION").strip

Gem::Specification.new do |s|
  s.name        = 'em-redis'
  s.version     = version
  s.platform    = Gem::Platform::RUBY
  s.summary     = "An eventmachine-based implementation of the Redis protocol"
  s.description = "An eventmachine-based implementation of the Redis protocol"
  
  s.authors     = ['Jonathan Broad', 'Eugene Pimenov']
  s.email       = ["libc@me.com"]
  s.homepage    = "http://github.com/pkieltyka/em-redis"

  s.required_rubygems_version = ">= 1.3.6"

  s.files        = Dir['README', 'VERSION', 'lib/**/*']
  s.require_path = 'lib'
  
  s.add_runtime_dependency("eventmachine", [">= 0.12.10"])
end

