require 'httparty'
require 'json_spec/cucumber'
require 'rubygems'

module JSONSpecInterface
  
  include HTTParty
   format :json
  
  def last_json
    @last_response.body
  end

  def self.raise_error last_response
    if (!last_response.response.kind_of? Net::HTTPSuccess)
        fail("Request failed at #{last_response.request.path.to_s} with error: #{last_response.to_json}")
    
    elsif (last_response.parsed_response["id"].nil?)
        fail("Unexpected Failure on data creation at #{last_response.request.path.to_s} with error: #{last_response.parsed_response}")
    end
  end
end

World(JSONSpecInterface)
