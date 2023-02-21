# Load the Rails application.
require_relative "application"


# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['JETMAIL_LOGIN'],
  :password => ENV['JETMAIL_PWD'],
  :domain => 'guarded-bastion-24087.herokuapp.com',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
