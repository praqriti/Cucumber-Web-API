Then /^User navigates to canvas home page$/ do
    @app.home.load 
    @app.home.should be_displayed  
end

Then /^I log out of my account$/ do
  @app.home.logout_link.text.should == "Logout"
end

Then /^User logs out$/ do
  @app.home.logout_link.click
  retry_on_timeout do
  @app.login.wait_for_message
  @app.login.message.text.should == "You have successfully logged out."
  end
end





