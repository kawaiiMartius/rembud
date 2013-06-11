class AddCompletedToOrderTasks < ActiveRecord::Migration
  def change
    add_column :order_tasks, :is_complete, :boolean
  end
end
