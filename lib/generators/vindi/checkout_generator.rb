# frozen_string_literal: true

require "rails/generators"

module Vindi
  module Generators
    class CheckoutGenerator < ::Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      desc "Copies Vindi checkout Stimulus JS and view templates to your Rails application."

      def copy_checkout_templates
        # Placeholders for future view/controller templates
        puts "Copying Vindi Checkout views and Stimulus controllers..."
      end
    end
  end
end
