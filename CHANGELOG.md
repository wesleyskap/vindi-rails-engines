# Changelog - vindi-rails-engines

All notable changes to this project will be documented in this file.

## [0.2.0] - 2026-06-15

### Added
- **Rails Engine Dashboard**: Mountable Rails admin dashboard (`Vindi::Engine`) to monitor integration status, display masked configurations, and test Vindi API connectivity dynamically. Includes a responsive dark theme, real-time Plan previews, and toast diagnostics using vanilla JS.

## [0.1.0] - 2026-06-10

### Added
- Initial release of front-end UI Engine components for the Vindi Rails SDK.
- **Checkout UI Generator**: `rails generate vindi:checkout` template copying view partial `_form.html.erb` and Stimulus JS controller `vindi_checkout_controller.js`.
- **Card Tokenizer**: Native JavaScript integration mapping to Vindi's public keys encryption SDK.
- **Test Suite**: Integrated Minitest suite verifying checkout templates directory structures and assets copying.
