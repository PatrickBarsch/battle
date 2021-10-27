require 'sinatra'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name_1] = params[:player_1]
    session[:player_name_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do 
    @player_name_1 = session[:player_name_1]
    @player_name_2 = session[:player_name_2]
    erb :play
  end

  run! if app_file == $0

end