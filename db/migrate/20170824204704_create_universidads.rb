class CreateUniversidads < ActiveRecord::Migration[5.1]
  def change
    create_table :universidads do |t|
      t.string :nombre
      t.text :ciudad
      t.integer :num_sedes

      t.timestamps
    end
  end
end
