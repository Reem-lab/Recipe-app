first_user = User.create(name: 'Tom', email: "tom@gmail.com", password: "123456")

apples = Food.create(name: 'Apple', measurement_unit: 'units', price: 5.0, user_id: first_user.id)
tomatoes = Food.create(name: 'Tomato', measurement_unit: 'units', price: 2.0, user_id: first_user.id)
potatoes = Food.create(name: 'Potato', measurement_unit: 'units', price: 3.0, user_id: first_user.id)

first_recipe = Recipe.create(name: 'Recipe 1', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: true, user_id: first_user.id)

second_recipe = Recipe.create(name: 'Recipe 2', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: true, user_id: first_user.id)

third_recipe = Recipe.create(name: 'Recipe 3', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: false, user_id: first_user.id)

RecipeFood.create(quantity: 1, recipe_id: first_recipe.id, food_id: tomatoes.id)
RecipeFood.create(quantity: 2, recipe_id: first_recipe.id, food_id: potatoes.id)
RecipeFood.create(quantity: 4, recipe_id: second_recipe.id, food_id: potatoes.id)
RecipeFood.create(quantity: 8, recipe_id: second_recipe.id, food_id: apples.id)
RecipeFood.create(quantity: 9, recipe_id: third_recipe.id, food_id: potatoes.id)
RecipeFood.create(quantity: 7, recipe_id: third_recipe.id, food_id: tomatoes.id)
