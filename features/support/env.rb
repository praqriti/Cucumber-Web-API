require 'bundler'
Bundler.require
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
# require 'capybara/webkit'
require 'site_prism'
require 'yaml'
require 'pry'
require 'selenium-webdriver'


After('@leave_the_window_open') do |scenario|
  if scenario.respond_to?(:status) && scenario.status == :failed
    print "Step Failed. Press return to close browser"
    STDIN.getc
  end
end

