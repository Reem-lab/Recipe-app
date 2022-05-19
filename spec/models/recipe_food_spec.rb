require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    @u = User.new(name: 'test', email: 'test@test.com')
    @r = @u.recipes.new(name: 'boiled egg', preparation_time: 2, cooking_time: 5,
                        description: 'Put the egg in boiling water for about 5 minutes,
                        slightly less if you like the yolk underdone', public: nil, user_id: @u.id)
    @f = @u.foods.new(name: 'egg', measurement_unit: 'un', price: 1, user_id: @u.id)
    @rf = @r.recipe_foods.new(quantity: 2, food_id: @f.id, recipe_id: @r.id)
    @rf.food = @f
  end
  it 'should have the correct food' do
    expect(@rf.food).to be @f
  end

  it 'should have the correct recipe' do
    expect(@rf.recipe).to be @r
  end

  it 'should have the correct quantity' do
    expect(@rf.quantity).to be 2
  end
end
