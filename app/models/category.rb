# -*- encoding : utf-8 -*-
class Category < ActiveRecord::Base
  
  # associations
  has_many :jobs, :dependent => :destroy
  
  # validates
  validates :title, :presence => true
end
# == Schema Information
#
# Table name: categories
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#

