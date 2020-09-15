class ReviewsController < ApplicationController
    http_basic_authenticate_with name: 'slickhoss', password: '12345', only: [:destroy]

    def create 
        @book = Book.find(params[:book_id])
        @review = @book.reviews.create(review_params)
        redirect_to book_path(@book)
    end

    def destroy
        @book = Book.find(params[:book_id])
        @review = @book.reviews.find(params[:id])
        @review.destroy
        redirect_to book_path(@book)
    end


    private def review_params
        params.require(:review).permit(:score)
    end
end
