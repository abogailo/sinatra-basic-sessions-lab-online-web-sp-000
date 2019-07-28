require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
     erb :index
  end

  post '/checkout' do
    @team = params[:team]
    erb :team
  end
end
