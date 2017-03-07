class Persona < ApplicationRecord
  belongs_to :genero
  belongs_to :etnia
  belongs_to :estadocivil
  belongs_to :escolaridad
  belongs_to :localidad
  belongs_to :arma
end
