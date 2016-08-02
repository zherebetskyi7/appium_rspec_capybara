Capybara.default_driver = :appium

Capybara.default_max_wait_time = 45

desired_caps_android = {
     platformName:  'Android',
     platformVersion: '4.2',
     deviceName:    'your_device_name',
     browserName:   'Chrome',
}

Capybara.register_driver(:appium) do |app|

        all_options = {
          start_capybara_server: true,
          caps:        desired_caps_android
        }
        Appium::Capybara::Driver.new app, all_options
end
