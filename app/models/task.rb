class Task < ApplicationRecord
  belongs_to :invoice

  def total_price
    invoices.all.pluck(:line_total).map { |total| total.to_i }.reduce(:+)
  end
end
