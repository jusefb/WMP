class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :title
      t.string :day
      t.integer :day_no
      t.date :date
      t.integer :bf_recipe_id
      t.integer :lunch_recipe_id
      t.integer :dinner_recipe_id

      t.timestamps
    end
  end
end
