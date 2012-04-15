# -*- encoding : utf-8 -*-
class AddCategoryIdToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :category_id, :integer
  end
end
