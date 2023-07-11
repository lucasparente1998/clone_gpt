# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}