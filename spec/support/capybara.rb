require 'capybara/rails'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL
end
