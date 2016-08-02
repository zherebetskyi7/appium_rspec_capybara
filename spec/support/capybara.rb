Capybara.default_driver = :appium

Capybara.default_max_wait_time = 45

desired_caps_android = {
     platformName:  'Android',
     platformVersion: '4.2',
     deviceName:    '0A3C27F50D00C01A',
     browserName:   'Chrome',
}

Capybara.register_driver(:appium) do |app|

        all_options = {
          start_capybara_server: true,
          caps:        desired_caps_android
        }
        Appium::Capybara::Driver.new app, all_options
end