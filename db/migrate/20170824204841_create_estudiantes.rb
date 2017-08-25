class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.integer :edad
      t.text :carrera

      t.timestamps
    end
  end
end
