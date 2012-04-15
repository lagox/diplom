# -*- encoding : utf-8 -*-
class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  validates :text, :presence => true
end
