class CreateHechos < ActiveRecord::Migration[5.0]
  def change
    create_table :hechos do |t|
      t.datetime :hecho_fecha
      t.datetime :hecho_denuncia
      t.datetime :hecho_registro
      t.boolean :hecho_reincidencia
      t.references :persona, foreign_key: true
      t.integer :hecho_agresor
      t.references :condicion, foreign_key: true
      t.references :parentesco, foreign_key: true
      t.references :delito, foreign_key: true
      t.references :sitio, foreign_key: true

      t.timestamps
    end
  end
end
