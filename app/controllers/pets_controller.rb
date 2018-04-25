class PetsController < ApplicationController

  before_action :set_user, only: [:new, :create]
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    @pet = @pet.user
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to current_user
    else
      render :new
    end
  end

  def edit
    if @pet.user != current_user
      redirect_to root_path
    end
  end

  def update
    if @pet.user != current_user
      flash[:alert] = "Não autorizado!"
      redirect_to root_path
    else
      @pet.update(pet_params)
      if @pet.save
        redirect_to current_user
      else
        render :new
      end
    end
  end

  def destroy
    if @pet.user != current_user
      flash[:alert] = "Não autorizado!"
      render :show
    else
      @pet.destroy
      redirect_to current_user
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :age, :weight, :description, :vaccine, :photo, :photo_cache,:comment, :castrated, :sex)
  end

end
