require "dummy_gem/version"
require "dummy_gem/configuration"

module DummyGem
  class Error < StandardError; end
  
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

require "dummy_gem/base"

Dir[File.join(__dir__, 'dummy_gem', '*.rb')].each do |fpath|
  require fpath
end