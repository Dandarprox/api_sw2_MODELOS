class CreateDeportes < ActiveRecord::Migration[5.1]
  def change
    create_table :deportes do |t|
      t.string :nombre_entrenador
      t.integer :num_integrantes
      t.text :tipo_depo

      t.timestamps
    end
  end
end
