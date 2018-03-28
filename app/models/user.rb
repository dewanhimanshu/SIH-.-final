class User < ApplicationRecord
  has_many :circulars
  
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  has_one :apply, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", dependent: :destroy
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :sign, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", dependent: :destroy
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
