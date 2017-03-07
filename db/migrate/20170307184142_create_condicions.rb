class CreateCondicions < ActiveRecord::Migration[5.0]
  def change
    create_table :condicions do |t|
      t.string :condicion_nombre

      t.timestamps
    end
    add_index :condicions, :condicion_nombre, unique: true
  end
end
