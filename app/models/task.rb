class Task < ApplicationRecord
  belongs_to :invoice

  def total_price
    puts "=================================="
    puts "ANSWER GOES HERE"
    puts "=================================="
    # invoices.all.pluck(:line_total).map { |total| total.to_i }.reduce(:+)
  end
end
