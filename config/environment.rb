# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# SENDGRID
# ActionMailer::Base.smtp_settings = {
#   address:        "smtp.sendgrid.net",
#   port:            587,
#   authentication: :plain,
#   user_name:      ENV['SENDGRID_EMAIL'],
#   password:       ENV['SENDGRID_PASSWORD'],
#   domain: 'nappiesapp.com',
#   enable_starttls_auto: true
# }
