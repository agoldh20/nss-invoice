class AddFullTotalColumnToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :full_total, :string
  end
end
