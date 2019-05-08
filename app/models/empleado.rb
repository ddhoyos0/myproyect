class Empleado < ApplicationRecord
  belongs_to :persona
  has_many :citum
  def name
  	cargo = self.cargo
  	empleado = self.persona.nombre
  	return ("#{cargo} : #{empleado}")
  end
end
