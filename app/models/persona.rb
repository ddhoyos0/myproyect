class Persona < ApplicationRecord
  has_many :empresa
  has_many :empleado
  belongs_to :documento
  belongs_to :sexo

  def name
    self.nombre
  end 
 
  def self.search(term, page)
    if term
      where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id DESC') 
    end
  end 

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :correo, format: { with: EMAIL_REGEX, message: "Formato de email invalido" }
end
