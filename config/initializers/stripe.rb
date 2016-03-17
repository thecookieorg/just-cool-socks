# config/initializers/stripe.rb
#todo remove the key info from this file and have env variable
#todo recreate new API keys when do that
if Rails.env == 'production'
  Rails.configuration.stripe = {
    :publishable_key => 'pk_live_TEqNEtrUcyuAO5AHXdrwFP0X',
    :secret_key      => 'sk_live_pk4KMQOqUwrpGEO01BXqpaLZ'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_WXrZ5xGwFlOYS9XYwziiZMfH',
    :secret_key      => 'sk_test_rIrraS7i7pnlgWn4EPWajDrP'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]