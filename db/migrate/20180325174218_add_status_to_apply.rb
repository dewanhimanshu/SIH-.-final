class AddStatusToApply < ActiveRecord::Migration[5.1]
  def change
    add_column :applies, :status, :string, default: "applied"
  end
end
