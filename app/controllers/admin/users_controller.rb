# -*- encoding : utf-8 -*-
class Admin::UsersController < Puffer::Base

  setup do
    group "Пользователи"
    model_name :user
  end

  index do
    # field :id
    field :email
    # field :password_digest
    # field :created_at
    # field :updated_at
    field :name
    field :avatar, :thumbnail => :thumb
    field :description
    field :rating
    field :typeuser
    field :originalrating
  end

  form do
    # field :id
    field :email
    # field :password_digest
    # field :created_at
    # field :updated_at
    field :name
    field :avatar, :thumbnail => :thumb
    field :description
    field :rating
    field :typeuser
    field :originalrating
  end

end
