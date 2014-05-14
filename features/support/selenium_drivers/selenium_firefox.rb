# Register a specific selenium driver for firefox
Capybara.register_driver :selenium_firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

# require "selenium-webdriver"

# Allows the use of a tag @selenium_firefox before a scenario to run it in selenium with firefox
# Before('@selenium_firefox') do
  # Capybara.current_driver = :selenium_firefox
# end


# profile = Selenium::WebDriver::Firefox::Profile.new
# profile["network.http.use-cache"] = false
#  
# Capybara.register_driver :selenium_firefox do |app|
# Capybara::Selenium::Driver.new(app,:browser => :firefox, :desired_capabilities =>   Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_profile => profile)
# )
# end
