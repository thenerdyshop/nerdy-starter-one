# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.default_url_options[:host] = "lvh.me:3000" # development
#ActionMailer::Base.default_url_options[:host] = "your_domain_name.com" # production
ActionMailer::Base.smtp_settings = {
	:address        => 'smtp.sendgrid.net',
	:port           => '587',
	:authentication => :plain,
	:user_name      => ENV['sendgrid_username'],
	:password       => ENV['sendgrid_password'],
	:domain         => 'heroku.com',
	:enable_starttls_auto => true
}