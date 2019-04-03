class Persona < ApplicationRecord
  belongs_to :documento
  
  has_many :empleado
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
end
