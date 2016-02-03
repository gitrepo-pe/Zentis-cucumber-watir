require 'watir'
require 'watir-webdriver'
require 'rspec'
require 'selenium-webdriver'


case ENV['BROWSER']
  when 'ie', 'Internet Explorer'
    browser = Watir::Browser.new :ie
  when 'ff', 'Firefox'
    browser = Watir::Browser.new :ff
  when 'chrome'
    browser = Watir::Browser.new :chrome
  when 'opera'
    browser = Watir::Browser.new :opera
  when 'headless', 'phantomjs'
    browser = Watir::Browser.new :headless
  when 'debug'
    debug_profile = Selenium::WebDriver::Firefox::Profile.new
    debug_profile.add_extension 'features/support/firebug.xpi'
    browser = Watir::Browser.new :firefox, :profile => debug_profile
  else
    browser = Watir::Browser.new :ie
end

#mybrowser = Watir::Browser.new(:remote,
#		:url => "http://kkirubanand:e457516d2-dec2-4f17-84f9-c791ce4511e2@ondemand.saucelabs.com:80/wd/hub",
#		:desired_capabilities => caps)

Before do
  @browser = browser
  browser.window.resize_to(1400, 800)
end

at_exit do
  sleep(20.to_i)
  browser.close
end

After do |scenario|
  if scenario.failed?
     screenshot_file = "./screenshots/#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
     @browser.driver.save_screenshot(screenshot_file)
     embed(screenshot_file, "image/png")
     sleep(20.to_i)
  end
end
