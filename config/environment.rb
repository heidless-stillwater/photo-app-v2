# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.credentials.dig(:sendgrid_mailer, :user_name), # This is the string literal 'apikey', NOT the ID of your API key
  :password => Rails.application.credentials.dig(:sendgrid_mailer, :api_key_secret),
  :domain => Rails.application.credentials.dig(:sendgrid_mailer, :domain),
  :from => Rails.application.credentials.dig(:sendgrid_mailer, :mail_sender),
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
