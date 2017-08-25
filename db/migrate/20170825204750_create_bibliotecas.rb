class CreateBibliotecas < ActiveRecord::Migration[5.1]
  def change
    create_table :bibliotecas do |t|
      t.string :nombre
      t.integer :tematica
      t.integer :pisos

      t.timestamps
    end
  end
end
