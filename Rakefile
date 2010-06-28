require 'rake'
require 'rake/gempackagetask'

spec = eval(File.read('em-redis.gemspec'))
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

task :default => ['redis:test']

namespace :redis do
  desc "Test em-redis against a live Redis"
  task :test do
    sh "bacon spec/live_redis_protocol_spec.rb spec/redis_commands_spec.rb spec/redis_protocol_spec.rb"
  end
end

# EOF
