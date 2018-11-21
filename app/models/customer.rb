class Customer < ApplicationRecord
  has_many :invoices

  def index_address
    "#{street_number} #{street_name}, #{city} #{zip}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
