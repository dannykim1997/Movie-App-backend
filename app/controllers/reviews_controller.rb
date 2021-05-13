class ReviewsController < ApplicationController

  before_action :find_review, only: [:show]
  # before_action :authorized, only: [:index]

    def index
        reviews = Review.all
        # reviews = current_user.reviews
      render json: ReviewSerializer.new(reviews).serialized_json
    end


    def show
      if review
        render json: ReviewSerializer.new(review).serialized_json
      else
        render json: {message: 'Review not found', error: review.errors}
      end
    end
    
    def new
      review = Review.new
    end

    def create
      review = Review.new(review_params)
      if review.save
        render json: ReviewSerializer.new(review).serialized_json
      else
        render json: { msg: 'Something went wrong'}
      end
    end

    def update
      review = Review.find_by(id: 
        params[:id]
        )
      if review.update(review_params)
        render json: ReviewSerializer.new(review).serialized_json
      else
        render json: { msg: 'Something went wrong'}
      end
    end
    

    def destroy
      review = Review.find_by(id: 
        params[:id]
        )
      if review.destroy
        render json: { msg: 'Review deleted'}
      else
        render json: { msg: 'Something went wrong'}
      end
    end
    

    private

    def find_review
      review = Review.find_by(id: 
      params[:id]
      )
    end

    def review_params
      params.require(:review).permit(:comment, :user_id, :movie_id)
    end
    
end