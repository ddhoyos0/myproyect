class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :user_default
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum rol: [:"Admnistrado Principal", :"Administrador ", :"Usuario"]
  private
  def user_default
    self.rol = :"Usuario"
  end
end
