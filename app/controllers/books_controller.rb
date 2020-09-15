class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        
    end

    def create
        #render plain: params[:book].inspect
        @book = Book.new(book_params)
        @book.save
        redirect_to @book
    end


    #requires params[:book] to have the following attributes
    private def book_params
        params.require(:book).permit(:title, :author, :publisher)
    end
end
