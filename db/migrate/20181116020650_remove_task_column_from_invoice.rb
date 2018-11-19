class RemoveTaskColumnFromInvoice < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :tasks, :string
    add_column :invoices, :task_id, :integer
  end
end
