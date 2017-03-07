class CreateEtnia < ActiveRecord::Migration[5.0]
  def change
    create_table :etnia do |t|
      t.string :etnia_nombre

      t.timestamps
    end
    add_index :etnia, :etnia_nombre, unique: true
  end
end
