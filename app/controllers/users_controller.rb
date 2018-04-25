class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @users = User.where.not(latitude: nil, longitude: nil)
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude#,
      }
    end
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


    @marker =
      [{
        lat: @user.latitude,
        lng: @user.longitude
      }]
  end

end
