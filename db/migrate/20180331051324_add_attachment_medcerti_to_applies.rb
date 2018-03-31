class AddAttachmentMedcertiToApplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applies do |t|
      t.attachment :medcerti
    end
  end

  def self.down
    remove_attachment :applies, :medcerti
  end
end
