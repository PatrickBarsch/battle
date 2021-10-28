require 'sinatra'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do 
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_hitpoints_2 = $player_2.hitpoints
    erb :play
  end

  get '/attack_player_2' do
    $player_1.attack($player_2)
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    erb :attack_player_2
  end

  run! if app_file == $0

end