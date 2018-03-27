class CreateConstituencies < ActiveRecord::Migration[5.1]
  def change
    create_table :constituencies do |t|
      t.string :name
      t.integer :pin_code
      t.integer :male_applicants, default: 0
      t.integer :female_applicants, default: 0

      t.timestamps
    end
  end
end
