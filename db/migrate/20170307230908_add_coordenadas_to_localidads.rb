class AddCoordenadasToLocalidads < ActiveRecord::Migration[5.0]
  def change
    add_column :localidads, :localidad_longitud, :float
    add_column :localidads, :localidad_latitud, :float
  end
end
