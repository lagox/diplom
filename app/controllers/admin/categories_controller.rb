# -*- encoding : utf-8 -*-
class Admin::CategoriesController < Puffer::Base

  setup do
    group "Категории"
    model_name :category
  end

  index do
    # field :id
    field :title
    field :description
  end

  form do
    # field :id
    field :title
    field :description
  end

end
