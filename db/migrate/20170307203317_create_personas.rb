class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.integer :persona_edad
      t.text :persona_direccion
      t.boolean :persona_embarazo
      t.boolean :persona_discapacidad
      t.references :genero, foreign_key: true
      t.references :etnia, foreign_key: true
      t.references :estadocivil, foreign_key: true
      t.references :escolaridad, foreign_key: true
      t.references :localidad, foreign_key: true
      t.references :arma, foreign_key: true

      t.timestamps
    end
  end
end
