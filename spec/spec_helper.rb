require 'capybara/rspec'
require 'appium_lib'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara-screenshot'
require 'capybara-screenshot/rspec'
require 'appium_capybara'

RSpec.configure do |config|

  config.before :each do
    desired_caps_android = {
      platformName:  'Android',
      platformVersion: '4.2',
      deviceName:    '0A3C27F50D00C01A',
      browserName:   'Chrome',
    }

    Capybara.register_driver(:appium) do |app|

        all_options = {
          caps:        desired_caps_android
        }
        Appium::Capybara::Driver.new app, all_options
    end

    Capybara.default_driver = :appium
    config.include Capybara::DSL

  end

  config.after :each do
    Capybara.reset_session!
  end

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

end
