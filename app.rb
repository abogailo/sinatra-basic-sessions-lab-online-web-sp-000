require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "penelope"
end

class App < Sinatra::Base
  get '/' do
     erb :index
  end

  post '/checkout' do
    @item = params[:item]
    erb :checkout
  end
end
