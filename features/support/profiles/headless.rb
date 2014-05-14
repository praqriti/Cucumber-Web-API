if Capybara.current_driver == :webkit
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end