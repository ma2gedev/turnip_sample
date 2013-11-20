require 'dotenv'
require 'capybara'
require 'capybara/poltergeist'
require 'turnip'
require 'turnip/capybara'

Dotenv.load '.env.development', '.env'

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

Capybara.configure do |c|
  c.default_driver = :poltergeist
  c.app_host = 'https://github.com'
end

RSpec.configure do |c|
  c.include Capybara::DSL
end
