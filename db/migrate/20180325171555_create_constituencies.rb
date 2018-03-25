class CreateConstituencies < ActiveRecord::Migration[5.1]
  def change
    create_table :constituencies do |t|
      t.string :name
      t.integer :pin_code
      t.integer :male_applicants
      t.integer :female_applicants

      t.timestamps
    end
  end
end
