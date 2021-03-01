class Historico < ApplicationRecord
  belongs_to :user
  has_many :gastos
end
