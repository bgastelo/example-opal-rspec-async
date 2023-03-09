Bundler.require
require 'opal/rspec/runner'

task :default do
  ENV['CHROME_OPTS'] ||= '--no-sandbox'
  ENV['SPEC_OPTS'] ||= '--format documentation --color'
  runner = ::Opal::RSpec::Runner.new do |_server, task|
    task.runner = :chrome
    task.default_path = 'spec-opal'
    task.files = ['spec-opal/simple_sum_spec.rb']
  end
  exit runner.run
end
