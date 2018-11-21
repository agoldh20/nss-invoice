class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all

    open_status = params[:status]
    customer_id = params[:customer]

    if open_status && customer_id
      @invoices = Invoice.where(status: open_status, customer_id: customer_id) 
    end
  end

  def new

  end

  def create
    @invoice = Invoice.new(
                           customer_id: params[:customer_id],
                           notes: params[:notes],
                           subtotal: params[:subtotal],
                           tax: params[:tax],
                           total: params[:total],
                           status: "open"
                           )
    @invoice.save
    
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
