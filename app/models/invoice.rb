class Invoice < ApplicationRecord
  has_many :tasks 
  belongs_to :customer

  def total_price
    tasks.pluck(:line_total).map { |total| total.to_i }.reduce(:+)
  end
end
