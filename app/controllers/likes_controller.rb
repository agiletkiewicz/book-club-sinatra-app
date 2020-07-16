class LikesController < ApplicationController

# Create a new like 

    post '/likes' do 
        @like = Like.create(params[:like])
        redirect "/users/#{current_user.id}"
    end


# Edit like 

    patch '/likes/:id' do
        @like = Like.find_by(id: params[:id])

        @like.update(params[:like])
        @like.save

        redirect "/users/#{current_user.id}"
    end




end