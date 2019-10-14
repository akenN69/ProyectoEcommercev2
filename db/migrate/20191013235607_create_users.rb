class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.bigint :rut
      t.string :address
      t.bigint :phone

      t.timestamps
    end
  end
end
