
class BooksController < ApplicationController

# Show all books 

    get '/books' do 
        @books = Book.all 

        erb :'books/index'
    end


# Create a new book 

    get '/books/new' do 
        erb :'books/new'
    end

    post '/books' do 
        if Book.find_by(title: params[:book][:title].strip)
            redirect '/books/new'
        elsif params[:book][:title] != "" && params[:book][:author] != "" && params[:book][:image_url] != ""
            @book = Book.create(params[:book])
            redirect "/books/#{@book.id}"
        else
            redirect '/books/new'
        end
    end


# Edit a book 

    get '/books/:id/edit' do 
        @book = Book.find_by(id: params[:id])

        erb :"books/edit"
    end

    patch '/books/:id' do 
        @book = Book.find_by(id: params[:id])
        
        if params[:book][:title] != "" && params[:book][:author] != "" && params[:book][:image_url] != ""
            @book.update(params[:book])
        end   
        redirect "/books/#{@book.id}" 
    end


# Book show page 

    get '/books/:id' do 
        @book = Book.find_by(id: params[:id])

        erb :"books/show"
    end



end