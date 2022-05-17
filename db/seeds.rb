first_user = User.create(name: 'Tom', email: "tom@gmail.com", password: "123456")

apples = Food.create(name: 'Apple', measurement_unit: 'units', price: 5.0, user_id: first_user.id)
tomatoes = Food.create(name: 'Tomato', measurement_unit: 'units', price: 2.0, user_id: first_user.id)
potatoes = Food.create(name: 'Potato', measurement_unit: 'units', price: 3.0, user_id: first_user.id)

first_recipe = Recipe.create(name: 'Recipe 1', preparation_time: '1h',
                                 cooking_time: '1h', description: 'Recipe 1 Description',
                                 public: true, user_id: first_user.id)

first_recipe2 = Recipe.create(name: 'Recipe 2', preparation_time: '5h',
                                 cooking_time: '2h', description: 'Recipe 2 Description',
                                 public: false, user_id: first_user.id)

RecipeFood.create(quantity: 1, recipe_id: first_recipe.id, food_id: apples.id)
