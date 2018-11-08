require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "not-secret"
  end 
  
  get '/' do 
    erb :index 
  end 
  
  post '/checkout' do 
    session["item"] = params[:name]
    @session = session
    
  end 
  
end