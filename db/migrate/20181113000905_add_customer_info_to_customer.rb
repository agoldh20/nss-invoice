class AddCustomerInfoToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :email, :string
    add_column :customers, :home_phone, :string
    add_column :customers, :cell_phone, :string
    add_column :customers, :street_number, :string
    add_column :customers, :street_name, :string
    add_column :customers, :unit, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :zip, :string
  end
end
