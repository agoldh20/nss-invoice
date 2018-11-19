class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :room
      t.string :info
      t.string :price

      t.timestamps
    end
  end
end
