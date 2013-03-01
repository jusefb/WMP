class CreateRecipes < ActiveRecord::Migration
  def up
    create_table :recipes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
