class CreateResourceInTasks < ActiveRecord::Migration
  def change
    create_table :resource_in_tasks do |t|
      t.integer :task_id
      t.integer :resource_id
      t.float :amount

      t.timestamps
    end
  end
end
