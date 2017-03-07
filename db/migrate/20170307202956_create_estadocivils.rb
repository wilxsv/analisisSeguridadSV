class CreateEstadocivils < ActiveRecord::Migration[5.0]
  def change
    create_table :estadocivils do |t|
      t.string :estadocivil_nombre

      t.timestamps
    end
    add_index :estadocivils, :estadocivil_nombre, unique: true
  end
end
