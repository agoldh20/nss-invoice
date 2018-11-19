class AddInvoiceIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :invoice_id, :integer
    remove_column :invoices, :task_id, :integer
  end
end
