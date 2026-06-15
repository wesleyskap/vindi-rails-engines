# frozen_string_literal: true

require_relative "test_helper"

class DashboardControllerTest < ActionController::TestCase
  tests Vindi::DashboardController

  setup do
    Vindi.configure do |config|
      config.api_key = "test_key_123"
      config.api_url = "https://sandbox-gp.vindi.com.br/api/v1"
    end
    @routes = Vindi::Engine.routes
  end

  test "should get index with connection status" do
    stub_client_request({ plans: [{ id: 1, name: "Gold", code: "gold", interval: "months", interval_count: 1, status: "active" }] }) do
      get :index
      assert_response :success
      assert_equal "Connected", @controller.instance_variable_get(:@connection_status)
      assert_equal "test_key_123", @controller.instance_variable_get(:@api_key)
      assert_equal 1, @controller.instance_variable_get(:@plans).first.id
    end
  end

  test "should return success on test_connection POST when api is up" do
    stub_client_request({ plans: [{ id: 1 }] }) do
      post :test_connection
      assert_response :success
      response_data = JSON.parse(@response.body, symbolize_names: true)
      assert_equal "success", response_data[:status]
      assert_match(/Successfully connected/, response_data[:message])
    end
  end

  test "should return error on test_connection POST when api raises exception" do
    stub_client_request(->(*_args) { raise StandardError.new("Connection refused") }) do
      post :test_connection
      assert_response :success
      response_data = JSON.parse(@response.body, symbolize_names: true)
      assert_equal "error", response_data[:status]
      assert_equal "Connection refused", response_data[:message]
    end
  end

  private

  def stub_client_request(return_value)
    # Define a temporary singleton method on Vindi::Client
    Vindi::Client.define_singleton_method(:request) do |*args|
      if return_value.respond_to?(:call)
        return_value.call(*args)
      else
        return_value
      end
    end
    yield
  ensure
    # Clean up the singleton method to restore original behavior
    Vindi::Client.singleton_class.send(:remove_method, :request)
  end
end
