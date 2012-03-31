# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def title
    return @title if defined?(@title)
    "Диплом"
  end
end
