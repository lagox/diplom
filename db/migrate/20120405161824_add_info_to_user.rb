class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :description, :text
    add_column :users, :rating, :integer
  end
end