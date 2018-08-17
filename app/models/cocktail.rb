class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy  #ne peut pas supprimer les instances dépendantes si utilisées dans une instance de cocktail
end



#command shift :  // inserer un # en debut de ligne
