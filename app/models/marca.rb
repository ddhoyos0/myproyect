class Marca < ApplicationRecord
  has_many :productos
  def name
    self.nombre
  end
end
