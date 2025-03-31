Rails.configuration.stripe = {
  publishable_key: Rails.application.credentials.dig(:stripe, :test_publishable_key),
  secret_key: Rails.application.credentials.dig(:stripe, :test_secret_key)
}
Stripe.api_key = Rails.application.credentials.dig(:stripe, :test_secret_key)
