class CreateDocumentOrderJoinTable < ActiveRecord::Migration
  def change
    create_table :documents_orders, id: false do |t|
      t.integer :document_id
      t.integer :order_id
    end
  end
end
