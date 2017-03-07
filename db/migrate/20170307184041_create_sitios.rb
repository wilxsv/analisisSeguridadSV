class CreateSitios < ActiveRecord::Migration[5.0]
  def change
    create_table :sitios do |t|
      t.string :sitio_nombre

      t.timestamps
    end
    add_index :sitios, :sitio_nombre, unique: true
  end
end
