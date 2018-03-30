class AddPointsToApplies < ActiveRecord::Migration[5.1]
  def change
    add_column :applies, :points, :integer
  end
end
