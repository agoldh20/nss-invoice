class TasksController < ApplicationController
  def index
    @tasks = Task.all

    invoice = params[:invoice]
    customer = params[:customer]

    if invoice
      @tasks = Task.where(invoice_id: invoice)
    end

    if customer
      @tasks = Task.where(customer_id: customer) 
    end
  end

  def new

  end

  def create
    @task = Task.new(
                     room: params[:room],
                     size: params[:size],
                     info: params[:info],
                     price_per_sqft: params[:price_per_sqft],
                     line_total: params[:line_total],
                     invoice_id: params[:invoice_id],
                     status: "open"
                     )
    @task.save

    redirect_to "/tasks/?invoice=#{params[:invoice_id]}"
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
    @task.destroy
    redirect_to "/tasks/?invoice=#{@task.invoice_id}"
  end
end
