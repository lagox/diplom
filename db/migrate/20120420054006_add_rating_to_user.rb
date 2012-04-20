class AddRatingToUser < ActiveRecord::Migration
  def change
    add_column :users, :originalrating, :decimal, :default => 0, :precision => 6, :scale => 2
  end
end