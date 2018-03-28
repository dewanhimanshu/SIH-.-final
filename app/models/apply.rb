class Apply < ApplicationRecord


  has_attached_file :avatar, styles: { medium: "500x500>", thumb: "300x300>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  belongs_to :user
end
