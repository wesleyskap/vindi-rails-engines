# Vindi Rails Engines

[Leia em Português (README.pt-BR.md)](./README.pt-BR.md)

An extension gem for the [vindi-rails](https://github.com/wesleyskap/vindi-rails) core SDK, providing mountable frontend checkouts, HTML views, and Stimulus JS credit card tokenization components using Vindi's public keys encryption.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vindi-rails-engines'
```

## Features & Usage

### 1. Checkout UI Setup
Copy Stimulus JS tokenization components and checkout form partial views to your application:
```bash
bundle exec rails generate vindi:checkout
```
This generates:
- Checkout view form partial (`app/views/vindi/checkout/_form.html.erb`)
- Stimulus controller (`app/javascript/controllers/vindi_checkout_controller.js`)

### 2. Rails Engine Dashboard
Mount the integration control panel in your host application routes:
```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount Vindi::Engine => "/admin/vindi"
end
```
This boots an administrative dashboard containing credentials mapping status, API connectivity diagnostic tools, and active Plan previews.

### 3. Environment Setup
Configure your public key in your environment file:
```bash
ENV["VINDI_PUBLIC_KEY"] = "YOUR_PUBLIC_KEY"
```

## Running Tests

To run the Minitest suite:
```bash
bundle exec rake test
```
