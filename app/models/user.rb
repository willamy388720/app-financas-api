class User < ApplicationRecord
  has_many :promos
  has_many :lista
  has_many :gastos
  has_many :comments
  has_one :historico
  has_one :carteira
  has_one :teto
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
