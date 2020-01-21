require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "https://enjoeat-sp4.herokuapp.com"
end
