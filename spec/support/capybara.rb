# # require 'capybara/rspec'
# # require 'selenium-webdriver'

# # RSpec.configure do |config|
# #     config.before(:each, type: :system) do
# #       driven_by :selenium_chrome_headless
# #     end
# # end
# # Capybara.default_driver = :rack_test
# # Capybara.javascript_driver = :selenium_chrome_headless

# Capybara.server = :puma, { Silent: true }

# Capybara.register_driver :chrome_headless do |app|
#   options = ::Selenium::WebDriver::Chrome::Options.new

#   options.add_argument('--headless')
#   options.add_argument('--no-sandbox')
#   options.add_argument('--disable-dev-shm-usage')
#   options.add_argument('--window-size=1400,1400')

#   Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
# end

# Capybara.javascript_driver = :chrome_headless

# # Setup rspec
# RSpec.configure do |config|
#   config.before(:each, type: :system) do
#     # driven_by :rack_test
#     driven_by :chrome_headless
#     # byebug

#   end

#   # config.before(:each, type: :system, js: true) do
#   #   driven_by :chrome_headless
#   # end
# end
