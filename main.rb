require "appium_lib"

opts = {
  caps: {
    "platformName": "Android",
    "deviceName": "Samsung Note 10",
    "automationName": "UiAutomator2",
    "app": "/Users/elvijsdzirkals/Desktop/Foreveryng.apk",
    "udid": "RF8N205TNHZ"
  },
  appium_lib: {
    server_url: "http://localhost:4723/wd/hub"
  }
}

$driver = Appium::Driver.new(opts,true)

$driver.start_driver
p $driver.methods