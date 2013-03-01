class Day < ActiveRecord::Base
  attr_accessible :bf_recipe_id, :date, :day, :day_no, :week_no, :dinner_recipe_id, :lunch_recipe_id, :title
  belongs_to(:bf_recipe, :class_name => 'Recipe', :foreign_key => :bf_recipe_id)
  belongs_to(:lunch_recipe, :class_name => 'Recipe', :foreign_key => :lunch_recipe_id)
  belongs_to(:dinner_recipe, :class_name => 'Recipe', :foreign_key => :dinner_recipe_id)
  validates_uniqueness_of(:title)
end
