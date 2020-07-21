require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enables the sessions hash
    enable :sessions
    # set a session secret for an extra layer of security
    set :session_secret, "my_book_club_app"

  end


  get "/" do
    @welcome = "true"
    
    erb :welcome
  end

  helpers do 

    def current_user 
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end

  end


end
