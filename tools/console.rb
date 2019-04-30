require_relative '../config/environment.rb'
require_relative '../app/models/RecipeCard.rb'
require_relative '../app/models/User.rb'
require_relative '../app/models/Ingredient.rb'
require_relative '../app/models/RecipeIngredient'
require_relative '../app/models/Allergy.rb'

andrew = User.new("Andrew")
mike = User.new("Mike")

spaghetti = Recipe.new("spaghetti")
sandwich = Recipe.new("apples")
soup = Recipe.new("soup")
pizza = Recipe.new("pizza")


card1 = RecipeCard.new("Jan 1", 4, andrew, spaghetti)
card2 = RecipeCard.new("Jan 1", 5, mike, spaghetti)
card3 = RecipeCard.new("Jan 1", 6, andrew, soup)
card4 = RecipeCard.new("Jan 1", 7, mike, pizza)
card5 = RecipeCard.new("Jan 1", 8, andrew, sandwich)
card6 = RecipeCard.new("Jan 1", 9, andrew, hamburger)

Allergy.new("apples", andrew)
Allergy.new("oranges", andrew)
Allergy.new("apples", mike)
Allergy.new("beef", mike)

water = RecipeIngredient.new(water, "juice")


binding.pry
0
