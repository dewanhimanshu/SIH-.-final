class AddNumberToConstituencies < ActiveRecord::Migration[5.1]
  def change
    add_column :constituencies, :number, :integer, default: 0
  end
end
