class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  def total_quantity_recipes
    recipe_foods.map(&:quantity).sum
  end
end
