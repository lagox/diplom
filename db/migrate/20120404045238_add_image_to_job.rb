# -*- encoding : utf-8 -*-
class AddImageToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :image, :string
  end
end
