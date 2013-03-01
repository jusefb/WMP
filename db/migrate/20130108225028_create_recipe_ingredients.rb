class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredientId
      t.integer :recipeId
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
