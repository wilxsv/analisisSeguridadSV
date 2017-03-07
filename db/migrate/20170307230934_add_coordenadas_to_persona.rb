class AddCoordenadasToPersona < ActiveRecord::Migration[5.0]
  def change
    add_column :personas, :persona_longitud, :float
    add_column :personas, :persona_latitud, :float
  end
end
