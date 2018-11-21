class Task < ApplicationRecord
  belongs_to :invoice

  def total_price
    total = @tasks.pluck(:line_total).reduce(:+)
  end
end
