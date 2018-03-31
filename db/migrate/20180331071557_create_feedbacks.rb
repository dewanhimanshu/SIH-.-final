class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :email
      t.text :feed
      t.integer :rating, default: 1

      t.timestamps
    end
  end
end
