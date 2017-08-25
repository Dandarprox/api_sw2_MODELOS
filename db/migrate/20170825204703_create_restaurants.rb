class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.integer :num_local
      t.text :tipo_comida

      t.timestamps
    end
  end
end
