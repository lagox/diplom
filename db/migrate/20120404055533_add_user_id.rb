# -*- encoding : utf-8 -*-
class AddUserId < ActiveRecord::Migration
  def change
    add_column :jobs, :user_id, :integer
  end
end
