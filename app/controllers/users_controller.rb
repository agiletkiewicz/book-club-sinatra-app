class UsersController < ApplicationController


# Show all users and bios

    get '/users' do 
        @users = User.all 

        erb :'/users/index'
    end



# Create user and log them in 

    get '/users/new' do 
        erb :'users/new'
    end

    post '/users' do 
        @user = User.new(params[:user])
        if @user.save
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            redirect '/users/new'
        end
    end



# User login

    get '/login' do 
        erb :'users/login'
    end

    post '/login' do 
       @user = User.find_by(username: params[:username])
       if @user && @user.authenticate(params[:password]) 
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
       else
        #error message 
        redirect '/login'
       end
    end


# Show user page 

    get '/users/:id' do 
        @user = User.find_by(id: params[:id])
        erb :'users/show'
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


# Edit or delete account

    get '/users/:id/edit' do 
        @user = User.find_by(id: params[:id])

        erb :'users/edit'
    end

    patch '/users/:id/edit' do 
        @user = User.find_by(id: params[:id])

        if logged_in? && current_user == @user
            @user.update(params[:user])
            redirect "/users/#{@user.id}"
        else 
            redirect "/"
        end

    end


    delete '/users/:id/delete' do 
        @user = User.find_by(id: params[:id])

        if logged_in? && current_user == @user
            @user.destroy
            redirect "/"
        else
            redirect "/"
        end

    end



end