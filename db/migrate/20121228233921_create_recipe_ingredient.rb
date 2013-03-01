class CreateRecipeIngredient < ActiveRecord::Migration
  def change
    create_table :recipe_ingredient do |t|
      t.belongs_to :recipe
      t.belongs_to :Ingredient
    end
  end
end
