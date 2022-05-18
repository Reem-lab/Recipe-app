class RecipeFoodsController < ApplicationController
  def create
  end

  def destroy
    @recipe_food = RecipeFood.find_by_id(params[:id])
    if @recipe_food.destroy
      flash[:noticw] = 'Ingedient deleted.'
    else
      flash[:alert] = 'Ingedient deletion unsucessful.'
    end
    redirect_to recipe_path(params[:recipe_id])
  end
end
