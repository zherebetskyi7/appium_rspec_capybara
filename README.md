# Appium, RSpec, Capybara and SitePrizm
Example to use Appium, RSpec, Capybara and SitePrizm

# For Ubuntu
at the first you must install appium for Ubuntu
http://askubuntu.com/questions/729047/how-to-install-and-configure-appium-in-ubuntu

# Options
This example is for physical android device

Here (spec/support/capybara) you enter your device name (deviceName:    'your_device_name',), ('adb devices' if you do not know the name of your device), and you must have install on your device Chrome browser

desired_caps_android = {
     platformName:  'Android',
     platformVersion: '4.2',
     deviceName:    'your_device_name',
     browserName:   'Chrome',
}

# How to run
1. open terminal in your project
2. bundle install
3. open another terminal and start appium server
4. in terminal of your project run tests
