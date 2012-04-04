# -*- encoding : utf-8 -*-
class Job < ActiveRecord::Base

  # validates
  validates :title, :presence => true
  validates :description, :presence => true
  
  # associations:
  belongs_to :user
  belongs_to :category
  
  mount_uploader :image, ImageUploader
  
end
# == Schema Information
#
# Table name: jobs
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

