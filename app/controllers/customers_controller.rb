class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new

  end

  def create
    @customer = Customer.new(first_name: params[:first_name],
                             last_name: params[:last_name],
                             email: params[:email],
                             home_phone: params[:home_phone],
                             cell_phone: params[:cell_phone],
                             street_number: params[:street_number],
                             street_name: params[:street_name],
                             unit: params[:unit],
                             city: params[:city],
                             state: params[:state],
                             zip: params[:zip])
    @customer.save
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.assign_attributes(first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                home_phone: params[:home_phone],
                                cell_phone: params[:cell_phone],
                                street_number: params[:street_number],
                                street_name: params[:street_name],
                                unit: params[:unit],
                                city: params[:city],
                                state: params[:state],
                                zip: params[:zip])
    @customer.save
  end

  def destroy
    @customer = Customer.find(params[:id])
  end
end
