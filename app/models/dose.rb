class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
# a cause des 2 lignes au dessus, les _id qui suivent sont inutiles
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id, message: "Combinaison en double " }
end
