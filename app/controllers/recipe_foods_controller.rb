class RecipeFoodsController < ApplicationController
  def new
    @current_user = current_user
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @available_foods = current_user.foods.reject { |f| @recipe.foods.include?(f) }
    @ingredient = RecipeFood.new
  end

  def create
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @recipe_food = RecipeFood.new(recipe_food_params.merge(recipe_id: @recipe.id))
    if @recipe_food.save
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.find(params[:id])
  end

  def update
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.update(quantity: params[:recipe_food][:quantity])

    if @recipe_food.save
      redirect_to recipe_path(params[:recipe_id]), notice: 'Your quantity updated successfully'
    else
      flash[:alert] = 'something went wrong, try again!!'
      render :edit
    end
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

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
