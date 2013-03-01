class RecipeIngredient < ActiveRecord::Base
  attr_accessible :amount, :ingredientId, :recipeId, :unit
end
