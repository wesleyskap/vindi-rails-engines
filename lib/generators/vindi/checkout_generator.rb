# frozen_string_literal: true

require "rails/generators"

module Vindi
  module Generators
    class CheckoutGenerator < ::Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      desc "Copies Vindi checkout Stimulus JS and view templates to your Rails application."

      def copy_checkout_templates
        copy_file "_form.html.erb", "app/views/vindi/checkout/_form.html.erb"
        copy_file "checkout_controller.js", "app/javascript/controllers/vindi_checkout_controller.js"
      end
    end
  end
end
