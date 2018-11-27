class RemoveFullInvoiceColumnFromInvoice < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :full_total, :string
  end
end
