class Impuesto < ApplicationRecord
  has_many :servicios
	def name
  		self.nombre
	end
end
