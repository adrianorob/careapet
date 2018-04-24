class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    current_user = @task.user
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to current_user_path
    else
      render :new
    end
  end

  def edit
    if @task.user != current_user
      redirect_to root_path
    end
  end

  def update
    if @task.user != current_user
      flash[:alert] = "Não autorizado!"
      redirect_to root_path
    else
      @task.update(task_params)
      if @task.save
        redirect_to current_user_path
      else
        render :new
      end
    end
  end

  def destroy
    if @task.user != current_user
      flash[:alert] = "Não autorizado!"
      render :show
    else
      @task.destroy
      redirect_to current_user_path
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:bath_value, :walk_value, :play_value, :look_after_value, :vet_value, :training_value, :clean_house_value, :comment)
  end

end
