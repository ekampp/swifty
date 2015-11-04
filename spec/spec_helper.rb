require 'bundler/setup'
Bundler.setup

require 'pathname'
$root = Pathname.new File.expand_path('..', __FILE__)

Dir[$root.join('support', '**', '*.rb')].each { |f| require f }

require 'swifty'

RSpec.configure do |config|
end
