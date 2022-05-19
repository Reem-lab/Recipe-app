class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  def total_price
    foods.map { |f| f.price * f.recipe_foods.find_by(recipe_id: id).quantity }.sum
  end
end
