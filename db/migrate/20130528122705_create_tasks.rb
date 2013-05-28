class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.decimal :price
      t.integer :execution_time
      t.integer :priority
      t.string :measurement

      t.timestamps
    end
  end
end
