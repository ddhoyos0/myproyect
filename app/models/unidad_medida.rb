class UnidadMedida < ApplicationRecord
  has_many :producto
  def name
    self.nombre
  end 
end
