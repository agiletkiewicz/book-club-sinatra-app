class UsersController < ApplicationController


# User login

    get '/login' do 
        erb :'users/login'
    end

    post '/login' do 
       @user = User.find_by(username: params[:username])
       if @user && @user.authenticate(params[:password]) 
        #log in
        session[:user_id] = @user.id
        #render user page
       else
        #error message 
        redirect '/login'
       end
    end


end