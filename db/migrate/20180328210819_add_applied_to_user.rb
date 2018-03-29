class AddAppliedToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :applied, :boolean, default: false
  end
end
