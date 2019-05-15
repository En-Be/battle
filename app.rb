require 'sinatra/base'

class Battle < Sinatra::Base

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb (:index)
  end

  post '/names' do
    p params
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb (:names)
  end

end
