require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "bubba"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    @session[@item]
    @session = session
    binding.pry

    erb :new
  end

end
