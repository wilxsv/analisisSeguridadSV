class CreateParentescos < ActiveRecord::Migration[5.0]
  def change
    create_table :parentescos do |t|
      t.string :parentesco_nombre

      t.timestamps
    end
    add_index :parentescos, :parentesco_nombre, unique: true
  end
end
