class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :code
  	  t.text :description
      t.timestamps
    end
  end
end
