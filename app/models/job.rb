# -*- encoding : utf-8 -*-
class Job < ActiveRecord::Base
  # associations
  belongs_to :category
  
  # validates
  validates :title, :presence => true
  validates :description, :presence => true
  
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

