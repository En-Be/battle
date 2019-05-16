require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    session[:p2hp] = 100
    erb (:index)
  end

  get '/play' do
    @name1 = $player_1_name
    @name2 = $player_2_name
    @p2hp = session[:p2hp]
    p session
    erb (:play)
  end

  post '/names' do
    $player_1_name = Player.new(params[:name1]).name
    $player_2_name = Player.new(params[:name2]).name

    # session[:name1] = params[:name1]
    # session[:name2] = params[:name2]
    redirect ('/play')

  end

  post '/attack' do
    # p $player_1_name
    # p $player_2_name
    session[:p2hp] -= 10
    redirect ('/play')

  end
end
