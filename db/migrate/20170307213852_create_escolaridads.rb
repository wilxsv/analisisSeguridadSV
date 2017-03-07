class CreateEscolaridads < ActiveRecord::Migration[5.0]
  def change
    create_table :escolaridads do |t|
      t.string :escolaridad_nombre

      t.timestamps
    end
    add_index :escolaridads, :escolaridad_nombre, unique: true
  end
end
