# -*- encoding : utf-8 -*-
class Admin::CommentsController < Puffer::Base

  setup do
    group "Комментарии"
    model_name :comment
  end

  index do
    # field :id
    field :user_id
    field :job_id
    field :text
    # field :created_at
    # field :updated_at
  end

  form do
    # field :id
    # field :user_id
    # field :job_id
    field :text
    # field :created_at
    # field :updated_at
  end

end
