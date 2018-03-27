class CreateVacencies < ActiveRecord::Migration[5.1]
  def change
    create_table :vacencies do |t|
      t.string :constituency
      t.integer :constituency_id
      t.integer :number, default: 0

      t.timestamps
    end
  end
end
