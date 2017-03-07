class CreateGeneros < ActiveRecord::Migration[5.0]
  def change
    create_table :generos do |t|
      t.string :genero_nombre

      t.timestamps
    end
    add_index :generos, :genero_nombre, unique: true
  end
end
