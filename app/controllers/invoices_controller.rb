class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all


  end

  def new

  end

  def create
    @invoice = Invoice.new(
                           customer_id: params[:customer_id],
                           notes: params[:notes],
                           subtotal: params[:subtotal],
                           tax: params[:tax],
                           total: params[:total]
                           )
    redirect_to "/tasks/?invoice=#{@invoice.id}"
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
