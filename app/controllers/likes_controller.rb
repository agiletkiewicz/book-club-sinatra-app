class LikesController < ApplicationController

# Create a new like 

    post '/likes' do 
        @like = Like.create(params[:like])
        redirect "/users/#{current_user.id}"
    end




end