class AddInvoiceInfoToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :tasks, :json
    add_column :invoices, :sub_total, :integer
    add_column :invoices, :tax, :integer
    add_column :invoices, :total, :integer
  end
end
