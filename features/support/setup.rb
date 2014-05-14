ENV_CONFIG = YAML.load(File.read("features/env_profile.yml"))

WEB_URL = "#{ENV_CONFIG['web_url']}"

API_URL = "#{ENV_CONFIG['api_url']}"

ANDROID_URL = "#{ENV_CONFIG['android_url']}"

Capybara.app_host = WEB_URL
Capybara.default_selector = :css
Capybara.default_driver = :selenium_firefox
Capybara.run_server = false
 #Capybara.javascript_driver = :selenium_chrome
# Capybara.javascript_driver = :webkit
Capybara.default_wait_time = 50
#Capybara.server_boot_timeout = 50
Capybara.reset_sessions!

