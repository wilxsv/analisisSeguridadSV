class CreateDelitos < ActiveRecord::Migration[5.0]
  def change
    create_table :delitos do |t|
      t.string :delito_nombre
      t.integer :delito_id

      t.timestamps
    end
    add_index :delitos, :delito_nombre, unique: true
  end
end
