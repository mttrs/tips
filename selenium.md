# [Selenium](http://www.seleniumhq.org/)
## webdriver([doc](http://docs.seleniumhq.org/docs/03_webdriver.jsp))
### ruby
```ruby
# Install selenium-webdriver
$ gem install selenium-webdriver
```
That's it. Let's write a script.

*test.rb*
```ruby
# User flow
# ----------
# Visit google.com
# Insert 'hello' in a search box
# Submit
# Check the title

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://google.com"

driver = Selenium::WebDriver.for :firefox
driver.get "http://google.com"

element = driver.find_element(:name => "q")
element.send_keys "hello"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "google" }

puts "Page title is #{driver.title}"
driver.quit
```

- [selenium-webdriver yard doc](http://selenium.googlecode.com/svn/trunk/docs/api/rb/frames.html)
- [google code](https://code.google.com/p/selenium/wiki/RubyBindings)
