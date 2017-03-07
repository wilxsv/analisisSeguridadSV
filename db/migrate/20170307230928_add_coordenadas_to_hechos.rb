class AddCoordenadasToHechos < ActiveRecord::Migration[5.0]
  def change
    add_column :hechos, :hecho_longitud, :float
    add_column :hechos, :hecho_latitud, :float
  end
end
