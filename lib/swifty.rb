require 'bundler/setup'
Bundler.setup

require 'active_support/all'
require 'cmxl'

require 'statements'
require 'export_info'
require 'import_info'
require 'meta_info'

require 'types/base'
require 'types/mt940'

module Swifty
  BaseError = Class.new(StandardError)
  IncorrectType = Class.new(StandardError)
  IncorrectFile = Class.new(StandardError)
end
