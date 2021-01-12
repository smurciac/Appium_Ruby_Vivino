Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
		unless File.directory?((File.join(File.dirname(__FILE__), "screenshots")))
			FileUtils.mkdir_p((File.join(File.dirname(__FILE__), "screenshots")))
    end
  time_stamp = Time.now.strftime("%Y-%m-%d-_%H.%M.%S")
  screenshot_name = "#{time_stamp}.png"
  screenshot_file = File.join(File.dirname(__FILE__), screenshot_name)
  $driver.screenshot(screenshot_file)
	attach("#{screenshot_file}", "image/png")
	end
	$driver.driver_quit
end

AfterConfiguration do
	FileUtils.rm_r((File.join(File.dirname(__FILE__), "screenshots"))) if File.directory?((File.join(File.dirname(__FILE__), "screenshots")))
end