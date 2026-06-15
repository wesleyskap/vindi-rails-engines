# frozen_string_literal: true

module Vindi
  class DashboardController < ActionController::Base
    layout "vindi/application"

    def index
      @api_key = Vindi.configuration.api_key
      @api_url = Vindi.configuration.api_url
      @cache_enabled = !Vindi.configuration.cache_store.nil?
      @cache_ttl = Vindi.configuration.cache_ttl
      @cached_resources = Vindi.configuration.cached_resources

      fetch_plans_for_dashboard
    end

    def test_connection
      Vindi::Plan.list(per_page: 1)
      render json: { status: "success", message: "Successfully connected to Vindi API!" }
    rescue => e
      render json: { status: "error", message: e.message }
    end

    private

    def fetch_plans_for_dashboard
      if @api_key
        @plans = Vindi::Plan.list(per_page: 5)
        @connection_status = "Connected"
      else
        @connection_status = "Not Configured"
        @plans = []
      end
    rescue => e
      @connection_status = "Error: #{e.message}"
      @plans = []
    end
  end
end
