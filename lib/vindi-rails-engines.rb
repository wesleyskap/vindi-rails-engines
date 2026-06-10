# frozen_string_literal: true

require "vindi"
require_relative "vindi/engines/version"
require_relative "vindi/engines/engine" if defined?(Rails)

module Vindi
  module Engines
    class Error < StandardError; end
  end
end
