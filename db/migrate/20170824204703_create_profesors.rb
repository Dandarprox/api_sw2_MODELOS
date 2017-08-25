class CreateProfesors < ActiveRecord::Migration[5.1]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.integer :edad
      t.text :depto

      t.timestamps
    end
  end
end
