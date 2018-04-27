class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all
    @caregivers = User.where(caregiver: true).where.not(latitude: nil, longitude: nil)
    @markers = @caregivers.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude#,
      }
    end


  end

  def show
    @user = User.find(params[:id])
    @review = Review.new
    @reviews = @user.reviews
    @pet = Pet.new
    @pets = @user.pets


    @marker =
      [{
        lat: @user.latitude,
        lng: @user.longitude
      }]
  end

end
