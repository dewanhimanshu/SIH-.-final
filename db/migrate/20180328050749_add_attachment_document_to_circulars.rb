class AddAttachmentDocumentToCirculars < ActiveRecord::Migration[5.1]
  def self.up
    change_table :circulars do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :circulars, :document
  end
end
