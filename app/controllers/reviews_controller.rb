class ReviewsController < ApplicationController

    before_action :find_review, only: [:show, :edit, :update, :delete]

    def index
        @reviews = Review.all
        render json: @reviews
      end

      def show
      end
      
      def new
        @review = Review.new
      end

      def create
        @review = Review.new(params[:review])
        if @review.save
          flash[:success] = "Review successfully created"
          redirect_to @review
        else
          flash[:error] = "Something went wrong"
          redirect_to 'new'
        end
      end

      private

      def find_review
        @review = Review.find_by(id: 
        params[:id]
        )
      end

      def review_params
        params.require(:review).permit(:comment, :user_id, :movie_id)
      end
      
end
