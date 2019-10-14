class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.float :unit_price
      t.text :description
      t.integer :stock

      t.timestamps
    end
  end
end
