ENV['RACK_ENV'] = 'test'
require_relative './../app'
require 'rspec'
require 'capybara'
require 'capybara/rspec'
require 'features/web_helpers'

Capybara.app = Battle