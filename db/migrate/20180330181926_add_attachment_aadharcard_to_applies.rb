class AddAttachmentAadharcardToApplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applies do |t|
      t.attachment :aadharcard
    end
  end

  def self.down
    remove_attachment :applies, :aadharcard
  end
end
