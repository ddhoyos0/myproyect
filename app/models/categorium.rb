class Categorium < ApplicationRecord
  belongs_to :empleado
  belongs_to :servicio
  def name
  	self.nombre
  end
end
