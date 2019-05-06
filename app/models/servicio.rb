class Servicio < ApplicationRecord
	belongs_to :tipo_de_servicio
	belongs_to :impuesto
	has_many :citum
	def name
  		self.nombre
	end
end
