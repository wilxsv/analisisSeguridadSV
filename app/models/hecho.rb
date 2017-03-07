class Hecho < ApplicationRecord
  belongs_to :persona
  belongs_to :condicion
  belongs_to :parentesco
  belongs_to :delito
  belongs_to :sitio
end
