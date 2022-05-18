class ShoppingListController < ApplicationController
  def index
    @current_user = current_user
    @foods = current_user.recipes.includes!(:foods).map { |r| r.foods }.flatten.uniq
    @total_price = @foods.map { | ingredient |  ingredient.price * ingredient.get_total_quantity_recipes}.sum
  end
end