require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  #enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb (:index)
  end

  get '/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    @p2hp = $player_2.hp
    #p session
    erb (:play)
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect ('/play')
  end

  post '/attack' do
    $player_1.attack($player_2)
    redirect ('/play')
  end

end
