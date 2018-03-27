class AddAttachmentSignToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :sign
    end
  end

  def self.down
    remove_attachment :users, :sign
  end
end
