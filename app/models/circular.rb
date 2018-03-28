class Circular < ApplicationRecord

  belongs_to :user
  
  has_attached_file :document
  validates_attachment_content_type :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
