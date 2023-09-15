# frozen_string_literal: true

require "capybara/rails"
require "capybara/rspec"

Capybara.register_driver :chrome do |app|
  args = ["disable-gpu"]
  headless = ActiveModel::Type::Boolean.new.cast(ENV.fetch("HEADLESS", true))
  args << "headless" if headless
  options = Selenium::WebDriver::Chrome::Options.new(args:)

  Capybara::Selenium::Driver.new(app, browser: :chrome, options:)
end

Capybara.javascript_driver = :chrome
