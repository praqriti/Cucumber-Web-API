Given(/^I create a new "([^\"]*)" with name "([^\"]*)" email "([^\"]*)" and phone "([^\"]*)"$/) do |role,first_name,email,phone_number|
  role = role.downcase
  @last_response = JSONSpecInterface.post("#{API_URL}/#{role}s",
                    :body => {
                        :first_name => first_name,
                        :last_name => "blah",
                        :email => email,
                        :password => "password",
                        :phone_number => phone_number,
                        }.to_json,
                    :headers => { "Content-Type" => "application/json"})
   steps %{
      Then the JSON should have "_id"
 }   
end

Then(/^I should be be able to find the "(.*?)" with email "(.*?)"$/) do |role, email|
  role = role.downcase
  user_id = @last_response['_id']
  @last_response = JSONSpecInterface.get("#{API_URL}/#{role}s/#{user_id}",:headers => { "Content-Type" => "application/json"})
   steps %{
    Then the JSON at "email" should be "#{email}"
    }   
end

