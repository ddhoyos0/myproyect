class Documento < ApplicationRecord
    has_many :personas
    def name
      self.nombre
    end
    
end
