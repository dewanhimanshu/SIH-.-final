class AddMedicalToApplies < ActiveRecord::Migration[5.1]
  def change
    add_column :applies, :medical, :boolean
  end
end
