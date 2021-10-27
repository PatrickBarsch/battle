ENV['RACK_ENV'] = 'test'
require_relative './../app'
require 'rspec'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Battle