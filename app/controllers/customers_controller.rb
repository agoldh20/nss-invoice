class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end  

  def new
    
  end  

  def create
    
  end

  def show
    @customer = Customer.find(params[:id])
  end  

  def edit
    @customer = Customer.find(params[:id])
  end  

  def update
    @customer = Customer.find(params[:id])
  end  

  def destroy
    @customer = Customer.find(params[:id])
  end  
    
end
