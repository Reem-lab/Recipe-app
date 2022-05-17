class RecipesController < ApplicationController
  def index
    @current_user = current_user
    @recipes = @current_user.recipes
  end

  def show; end

  def destroy
    @recipe = Recipe.find_by_id(params[:id])
    redirect_to recipes_path if @recipe.destroy
  end
end
