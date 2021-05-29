require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'pry'
require 'rspec'

include RSpec::Matchers

Capybara.configure do |config|
  config.default_driver = ENV.fetch('DRIVER', :selenium).to_sym
  config.app_host = 'https://us.battle.net/support/en/'
  config.default_max_wait_time = 5

end

# Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end
