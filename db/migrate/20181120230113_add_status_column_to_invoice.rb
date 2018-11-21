class AddStatusColumnToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :status, :string
    remove_column :tasks, :status, :string
  end
end
