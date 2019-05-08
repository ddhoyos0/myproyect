class Servicio < ApplicationRecord
	has_many :citum
	belongs_to :tipo_de_servicio
	belongs_to :impuesto
	def name
  		self.nombre
	end
end
