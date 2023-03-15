class Recipe < ApplicationRecord
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods
  belongs_to :author, class_name: 'User'
end
