class Task < ApplicationRecord
  belongs_to :invoice

  def total_price
    current_invoice = Task.where(invoice_id: params[:invoice])
    total = @tasks.pluck(:line_total).reduce(:+)
    total
  end
end
