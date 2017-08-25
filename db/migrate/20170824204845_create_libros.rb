class CreateLibros < ActiveRecord::Migration[5.1]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.integer :iso
      t.text :resumen

      t.timestamps
    end
  end
end
