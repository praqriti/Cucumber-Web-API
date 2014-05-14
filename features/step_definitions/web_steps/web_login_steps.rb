Then /^User is on the Sign In page$/ do
  @app = App.new
  @app.home.load
  @app.login.should be_displayed
end

When /^User "([^\"]*)" logs into Canvas with her credentials$/ do |identifier|
  user = @users.find{|user| user.identifier == identifier}
  @app.login.email.set "#{user.login_id}"
  @app.login.password.set "#{user.password}"
  @app.login.sign_in_button.click
  
  steps %{
    Then "#{user.name}" should see the Canvas home page
    }
end 
  
Then /^I am given an appropriate error$/ do
  @app.login.wait_for_message_box
  @app.login.message_box.text.should == "Incorrect username or password."
end

Then /^"([^\"]*)" should see the Canvas home page$/ do |username|  
  retry_on_timeout do
   @app.home.should be_displayed
   @app.home.wait_for_username_link
   if (!@app.home.should have_username_link)
   @app.home.load
 end
  end
  @app.home.username_link.text.should == username
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

Given /^User logs out and logs into canvas as "(.*?)"$/ do |username|
  steps %{
    Then User logs out
    Then User "#{username}" logs into Canvas with her credentials
    }
end




