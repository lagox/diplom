# -*- encoding : utf-8 -*-
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  validates :text, :presence => true
  
  # scope
  default_scope order("created_at ASC")
  
  scope :forlive,  reorder("created_at DESC")

end
