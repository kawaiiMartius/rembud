class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :started_at
      t.string :stage

      t.timestamps
    end
  end
end
