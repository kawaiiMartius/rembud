class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :code
      t.text :template

      t.timestamps
    end
  end
end
