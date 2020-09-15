class BooksController < ApplicationController
    http_basic_authenticate_with name: 'slickhoss', password: '12345', except: [:index, :show]
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end

    def create
        #render plain: params[:book].inspect
        @book = Book.new(book_params)
        if(@book.save)
        redirect_to @book    
        else
            render 'books/new'
        end
    end

    def edit
        @book = Book.find(params[:id])
    end


    def update
        @book = Book.find(params[:id])
        if(@book.update(book_params))
            redirect_to @book
        else
            render 'books/edit'
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy

        redirect_to books_path
        #books_path = '/'
    end

    #requires params[:book] to have the following attributes
    private def book_params
        params.require(:book).permit(:title, :author, :publisher)
    end
end
