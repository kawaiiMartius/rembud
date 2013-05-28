class CreateOrderTasks < ActiveRecord::Migration
  def change
    create_table :order_tasks do |t|
      t.integer :order_id
      t.integer :task_id
      t.float :amount

      t.timestamps
    end
  end
end
