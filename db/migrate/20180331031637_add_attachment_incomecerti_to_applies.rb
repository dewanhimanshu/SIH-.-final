class AddAttachmentIncomecertiToApplies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :applies do |t|
      t.attachment :incomecerti
    end
  end

  def self.down
    remove_attachment :applies, :incomecerti
  end
end
