class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def new
    
  end

  def create
    invoice = Invoice.new(customer_id: params[:customer_id],
                   sub_total: params[:sub_total],
                   tax: params[:tax],
                   customer_id: params[:customer_id])
    

  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
  end

  def destroy
    @invoice = Invoice.find(params[:id])
  end
end
