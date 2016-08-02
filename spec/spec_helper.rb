require 'capybara/rspec'
require 'appium_lib'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara-screenshot'
require 'capybara-screenshot/rspec'
require 'appium_capybara'
require 'support/capybara'

#capy_driver = Capybara.current_session.driver

RSpec.configure do |config|

  config.include Capybara::DSL

    config.before :all do
      
    end

  config.after :all do
    Capybara.reset_session!
  end

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

end
