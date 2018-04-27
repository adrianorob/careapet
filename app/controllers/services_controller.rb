class ServicesController < ApplicationController

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
    @service = Service.new(service_params)
    @service.buyer = current_user
      if @service.save!
          redirect_to root_path
      else
        render :new
      end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:start_date, :end_date, :buyer_id, :user_tasks_id)
  end

end
