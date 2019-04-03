class Citum < ApplicationRecord
  belongs_to :servicio
  belongs_to :empleado
  belongs_to :user
end
