class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  def get_total_quantity_recipes
     recipe_foods.map { | f | f.quantity }.sum
  end

end
