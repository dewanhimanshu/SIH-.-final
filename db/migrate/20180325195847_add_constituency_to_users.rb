class AddConstituencyToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :constituency, :string
  end
end
