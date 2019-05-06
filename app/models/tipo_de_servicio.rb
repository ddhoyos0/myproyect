class TipoDeServicio < ApplicationRecord
  has_many :servicios
	def name
  	self.nombre
	end
end
