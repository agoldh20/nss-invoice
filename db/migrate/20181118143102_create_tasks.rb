class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :room
      t.text :info
      t.string :price
      t.integer :invoice_id

      t.timestamps
    end
  end
end
