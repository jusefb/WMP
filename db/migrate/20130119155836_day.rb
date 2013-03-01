class Day < ActiveRecord::Migration
  def up
    add_column(:days, :week_no, :integer)
  end

  def down
    remove_column(:days, :week_no, :integer)
  end
end
