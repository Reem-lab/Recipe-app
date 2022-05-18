class FoodsController < ApplicationController
  def index
    @current_user = current_user
    @foods = current_user.foods
  end

  def new
    @current_user = current_user
    @food = Food.new
  end

  def create
    @food = current_user.foods.new(food_params)

    if @food.save
      redirect_to foods_path, notice: 'Your Food is created successfully 💯'
    else
      flash[:alert] = 'Something went wrong, Try again!'
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
