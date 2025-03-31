class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #
  # devise :database_authenticatable, :registerable, :confirmable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :payment
  has_many_attached :images

  accepts_nested_attributes_for :payment

  has_one_attached :avatar  #for single image upload
  # has_many_attached :images #for multiple image upload
  # has_rich_text :content #for rich text editor
  
end
