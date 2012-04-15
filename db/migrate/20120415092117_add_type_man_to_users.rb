# -*- encoding : utf-8 -*-
class AddTypeManToUsers < ActiveRecord::Migration
  def change
    add_column :users, :typeuser, :string
  end
end
