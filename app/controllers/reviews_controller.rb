class ReviewsController < ApplicationController

  before_action :set_user, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating, :author)
  end

end
