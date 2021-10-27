require 'sinatra'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Battle!'
    'Testing infrastructure working!'
  end

  run! if app_file == $0

end