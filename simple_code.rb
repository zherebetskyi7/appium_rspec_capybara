require 'rubygems'  
require 'appium_lib'
require 'selenium-webdriver'

desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '4.2',
        deviceName:    '0A3C27F50D00C01A',
        browserName:   'Chrome',
    }
}

 @appium_driver = Appium::Driver.new(desired_caps)   

 @selenium_driver = @appium_driver.start_driver  

 Appium.promote_appium_methods Object  

@selenium_driver.get("https://promoter.gastroli.ua")
sleep 2
input_email = @selenium_driver.find_element(:xpath, '//input[@id="user_email"]')
input_email.send_keys("yura.zhe@qubstudio.com")

input_password = @selenium_driver.find_element(:xpath, '//input[@id="user_password"]')
input_password.send_keys("verblyud1488")

button_enter = @selenium_driver.find_element(:xpath, '//button[@type="submit"]')
button_enter.click

sleep 5