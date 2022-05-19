class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  def total_quantity_recipes
    recipe_foods.map(&:quantity).sum
  end
end
