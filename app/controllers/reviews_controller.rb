class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review = @restaurant.reviews.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
        redirect_to restaurant_path(@restaurant)
        return
    else
        render :new
        return
    end
    end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

# if @review.save
#     redirect_to restaurant_path(@restaurant)
#     return
# else
#     render :new
#     return
# end
