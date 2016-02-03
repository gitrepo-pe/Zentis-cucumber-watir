#require "rubygems"
require "watir"
require "watir-webdriver"
#require "rspec"
require 'win32ole'



#from the watir library go to the browser class and instatiee a browser class and give the firefox

#mybrowser = Watir::Browser.new:firefox
mybrowser = Watir::Browser.new:chrome
#mybrowser = Watir::Browser.new:phantomjs
#mybrowser = Watir::Browser.new:ie
#mybrowser.maximize

#visit royalmail.com
mybrowser.goto "http://www.royalmail.com/"
