class AddNotesColumnToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :notes, :text
    add_column :invoices, :subtotal, :integer
    add_column :invoices, :tax, :integer
    add_column :invoices, :total, :integer
    add_column :tasks, :size, :string
    add_column :tasks, :line_total, :string
    rename_column :tasks, :price, :price_per_sqft
  end
end
