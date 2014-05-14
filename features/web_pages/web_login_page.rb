class Login < SitePrism::Page
  set_url "/login"
  set_url_matcher /cas\/login/
  
  element :email, "input#username"
  element :password, "input#password"
  element :sign_in_button, "input.submit"
end
