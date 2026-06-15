# frozen_string_literal: true

Vindi::Engine.routes.draw do
  get "/", to: "dashboard#index", as: :dashboard
  post "/test_connection", to: "dashboard#test_connection"
end
