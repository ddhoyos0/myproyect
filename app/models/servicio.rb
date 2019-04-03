class Servicio < ApplicationRecord
	belongs_to :categorias
	has_many :citum
	def name
  		self.nombre
	end
end
