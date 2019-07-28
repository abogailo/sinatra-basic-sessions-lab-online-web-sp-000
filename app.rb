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
    session[:item] = params[:item]
    @item = params[:item]
    erb :checkout
  end
end
