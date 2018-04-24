class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @task = Task.new
    @tasks = @user.tasks
    @review = Review.new
    @reviews = @user.reviews
    @pet = Pet.new
    @pets = @user.pets
    @service = Service.new
    @services = @user.services
  end

end
