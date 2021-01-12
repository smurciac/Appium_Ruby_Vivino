require "appium_lib"
require "selenium-webdriver"

def caps
  { caps: {
			deviceName: "Samsung Galaxy S10",
			platformName: "Android",
			app: (File.join(File.dirname(__FILE__), "app-world-beta.apk")),
      appPackage: "vivino.web.app.beta",
      appActivity: "com.sphinx_solution.activities.OOTB2",
      newCommandTimeout: "10000",
		}}
end

def wait_for
  Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
end

Appium::Driver.new( caps, true)
Appium.promote_appium_methods Object