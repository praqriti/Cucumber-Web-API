class Home < SitePrism::Page
  set_url "/"
  set_url_matcher //
  
  element :username_link, "li.user_name"
  element :header, "#header-logo"
  element :logout_link, "ul#identity li.logout a"
  
end
