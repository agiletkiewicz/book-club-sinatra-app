class UsersController < ApplicationController


# User login

    get '/login' do 
        erb :'users/login'
    end

    post '/login' do 
       @user = User.find_by(username: params[:username])
       if @user && @user.authenticate(params[:password]) 
        session[:user_id] = @user.id
        #render user page
       else
        #error message 
        redirect '/login'
       end
    end

# User logout

    get '/logout' do 
        erb :'users/logout'
    end

    post '/logout' do 
        if logged_in?
            session.clear
            redirect '/login'
        else
            redirect '/'
        end
    end


end