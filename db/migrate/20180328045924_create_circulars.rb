class CreateCirculars < ActiveRecord::Migration[5.1]
  def change
    create_table :circulars do |t|
      t.string :by
      t.text :content, default: ""
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
