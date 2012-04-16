# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation,
    :name, :description, :avatar, :typeuser
  
  validates :email, :uniqueness => true
  
  # associations
  has_many :jobs, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  # uploader
  mount_uploader :avatar, AvatarUploader
  
  scope :photo, where(:typeuser => "photo")
  scope :design, where(:typeuser => "design")
  
  def self.typeusers_options
    {
      "Дизайнер" => "design",
      "Фотограф" => "photo"
    }
  end
  
  paginates_per 6
end
