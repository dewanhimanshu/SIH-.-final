class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_husband_name
      t.string :aadhaar
      t.date :date_of_birth
      t.string :address
      t.string :constituency
      t.string :mobile
      t.string :gender
      t.string :family_income

      t.timestamps
    end
  end
end
