class Producto < ApplicationRecord
  belongs_to :marca
  belongs_to :unidad_medida
end
