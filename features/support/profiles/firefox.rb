require File.dirname(__FILE__) + "/../env.rb"

Capybara.configure do |config|
  config.current_driver = :selenium_firefox
end