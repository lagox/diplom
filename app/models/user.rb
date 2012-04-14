# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation,
    :name, :description, :avatar
  
  validates :email, :uniqueness => true
  
  # associations
  has_many :jobs, :dependent => :destroy
  mount_uploader :avatar, ImageUploader
end
