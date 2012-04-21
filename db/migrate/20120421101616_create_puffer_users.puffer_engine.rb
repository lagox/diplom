# -*- encoding : utf-8 -*-
# This migration comes from puffer_engine (originally 20110912095647)
class CreatePufferUsers < ActiveRecord::Migration
  def change
    create_table :puffer_users do |t|
      t.string :email
      t.string :password_digest
      t.string :roles

      t.timestamps
    end
  end
end
