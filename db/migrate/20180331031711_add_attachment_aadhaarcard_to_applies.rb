class AddAttachmentAadhaarcardToApplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applies do |t|
      t.attachment :aadhaarcard
    end
  end

  def self.down
    remove_attachment :applies, :aadhaarcard
  end
end
