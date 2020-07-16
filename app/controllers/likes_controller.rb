class LikesController < ApplicationController

# Create a new like 

    post '/likes' do 
        @like = Like.create(params[:like])
        redirect "/users/#{current_user.id}"
    end


# Edit like 

    patch '/likes/:id' do
        @like = Like.find_by(id: params[:id])

        if logged_in? && @like.user_id == current_user.id
            @like.update(params[:like])
            @like.save
        else
            redirect '/'
        end

        redirect "/users/#{current_user.id}"
    end


    # Delete like 

    delete '/likes/:id' do
        @like = Like.find_by(id: params[:id])

        if logged_in? && @like.user_id == current_user.id
            @like.destroy
        end    
        redirect "/users/#{current_user.id}"
    end



end