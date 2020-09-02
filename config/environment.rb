# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'nappiesapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
