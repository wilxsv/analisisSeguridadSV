class CreateEstadoscivils < ActiveRecord::Migration[5.0]
  def change
    create_table :estadoscivils do |t|
      t.string :estadocivil_nombre

      t.timestamps
    end
    add_index :estadoscivils, :estadocivil_nombre, unique: true
  end
end
