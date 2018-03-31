class AddAttachmentIncomecertificateToApplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applies do |t|
      t.attachment :incomecertificate
    end
  end

  def self.down
    remove_attachment :applies, :incomecertificate
  end
end
