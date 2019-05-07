class Impuesto < ApplicationRecord
  has_many :servicios
	def name
  		self.valor
	end
end
