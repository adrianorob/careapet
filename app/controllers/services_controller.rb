class ServicesController < ApplicationController

  before_action :set_user, only: [:new, :create]
  before_action :set_service, only: [:show]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    if @service.user == current_user
      redirect_to current_user
    else
      @service = Service.new(service_params)
        if @service.save!
          redirect_to root_path
        else
          render :new
        end
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:start_date, :end_date, :total_value, :photo, :photo_cache, :user_id, :pet_id, :task_id)
  end

end
