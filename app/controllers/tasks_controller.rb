class TasksController < ApplicationController
  def index
    @tasks = Task.all

    invoice = params[:invoice]

    @tasks = 
  end

  def new

  end

  def create
    @task = Task.new(
                     room: params[:room],
                     size: params[:size],
                     info: params[:info],
                     price_per_sqft: params[:price_per_sqft],
                     line_total: params[:line_total]
                     )
    @task.save
  end

  def show
    @task = Task.find(params[:id])  
  end

  def edit
    @task = Task.find(params[:id])  
  end

  def update
    @task = Task.find(params[:id])
    @task.assign_attrbutes(
                     room: params[:room],
                     size: params[:size],
                     info: params[:info],
                     price_per_sqft: params[:price_per_sqft],
                     line_total: params[:line_total]
                     )
    @task.save
  end

  def destroy
    @task = Task.find(params[:id])
  end
end
