class CreateLocalidads < ActiveRecord::Migration[5.0]
  def change
    create_table :localidads do |t|
      t.string :localidad_nombre
      t.integer :localidad_id

      t.timestamps
    end
  end
end
