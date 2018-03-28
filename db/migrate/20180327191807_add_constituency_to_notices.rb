class AddConstituencyToNotices < ActiveRecord::Migration[5.1]
  def change
    add_column :notices, :constituency, :string, default: "For all"
  end
end
