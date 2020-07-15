class BooksController < ApplicationController


# Create a new book 

    get '/books/new' do 
        erb :'books/new'
    end

    post '/books' do 
        if Book.find_by(title: params[title].strip)
            #show error
            redirect '/books/new'
        elsif params[:book][:title] != "" && params[:book][:author] != "" && params[:book][:image_url] != ""
            @book = Book.create(params[:book])
            redirect "/books/#{@book.id}"
        else
            #show error 
            redirect '/books/new'
        end
    end


# Book show page 

    get '/books/:id' do 
        @book = Book.find_by(id: params[:id])

        erb :"books/show"
    end




end