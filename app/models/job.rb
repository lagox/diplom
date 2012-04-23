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
  paginates_per 12
  
  ajaxful_rateable :stars => 10, :dimensions => [:all], :cache_column => :rating_average
  
  default_scope order("created_at DESC")
  scope :top, reorder("rating_average DESC").limit(12)
  
  def self.search(search)
    if search
      word = '%'+search+'%'
      text_conditions = "SELECT * FROM jobs WHERE title LIKE ? or description LIKE ?"
      conditions = [text_conditions, word, word]
      Job.find_by_sql(conditions)
    else
      find(:all)
    end
  end
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

