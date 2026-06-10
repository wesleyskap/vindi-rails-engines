# frozen_string_literal: true

require_relative "test_helper"
require "rails/generators/test_case"

class CheckoutGeneratorTest < Rails::Generators::TestCase
  tests Vindi::Generators::CheckoutGenerator
  destination File.expand_path("../tmp", __FILE__)
  setup :prepare_destination

  test "generator copies checkout view and stimulus controller" do
    run_generator

    assert_file "app/views/vindi/checkout/_form.html.erb" do |content|
      assert_match(/Vindi PCI-Compliant Checkout Form/, content)
      assert_match(/vindi-checkout/, content)
    end

    assert_file "app/javascript/controllers/vindi_checkout_controller.js" do |content|
      assert_match(/vindi-checkout/, content)
      assert_match(/tokenizeCard/, content)
    end
  end
end
