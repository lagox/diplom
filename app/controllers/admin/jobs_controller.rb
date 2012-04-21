# -*- encoding : utf-8 -*-
class Admin::JobsController < Puffer::Base

  setup do
    group "Работы"
    model_name :job
  end

  index do
    # field :id
    field :title
    field :description
    # field :created_at
    # field :updated_at
    field :image, :thumbnail => :thumb
    field :category_id
    field :user_id
    field :rating_average
  end

  form do
    # field :id
    field :title
    field :description
    # field :created_at
    # field :updated_at
    field :image, :thumbnail => :thumb
    field :category_id
    field :user_id
    field :rating_average
  end

end
