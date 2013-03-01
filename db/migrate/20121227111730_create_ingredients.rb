class CreateIngredients < ActiveRecord::Migration
  def up
    create_table :ingredients do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
