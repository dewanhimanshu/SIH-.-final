class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :by
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
