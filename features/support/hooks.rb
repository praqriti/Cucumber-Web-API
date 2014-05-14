After do   
 @last_response = JSONSpecInterface.delete("#{API_URL}/owners/#{@last_response['_id']}",
                  :headers => { "Content-Type" => "application/json"})
end

  
