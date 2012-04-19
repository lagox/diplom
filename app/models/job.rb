# -*- encoding : utf-8 -*-
class Job < ActiveRecord::Base

  # validates
  validates :title, :presence => true
  validates :description, :presence => true
  
  # associations:
  belongs_to :user
  belongs_to :category
  has_many :comments, :dependent => :destroy
  
  # uploader
  mount_uploader :image, ImageUploader
  
  # paginate
  paginates_per 9
  
  ajaxful_rateable :stars => 10, :dimensions => [:all]
  
  default_scope order("created_at DESC")
  
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

