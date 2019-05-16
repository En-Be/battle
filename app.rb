require 'sinatra/base'

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
    @name1 = session[:name1]
    @name2 = session[:name2]
    @p2hp = session[:p2hp]
    p session
    erb (:play)
  end

  post '/names' do

    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect ('/play')

  end

  post '/attack' do
    session[:p2hp] -= 10
    redirect ('/play')

  end
end
