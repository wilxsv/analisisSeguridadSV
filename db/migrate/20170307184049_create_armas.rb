class CreateArmas < ActiveRecord::Migration[5.0]
  def change
    create_table :armas do |t|
      t.string :arma_nombre
      t.integer :arma_id

      t.timestamps
    end
    add_index :armas, :arma_nombre, unique: true
  end
end
