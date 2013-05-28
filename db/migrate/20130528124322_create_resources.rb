class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :code
      t.decimal :price
      
      t.references :resoursable, polymorphic: true

      t.timestamps
    end
  end
end
