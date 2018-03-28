class AddAppliedToApply < ActiveRecord::Migration[5.1]
  def change
    add_column :applies, :applied, :boolean, default: false
  end
end
