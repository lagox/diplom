# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def title
    base_title = 'Диплом'
    if @title
      "#{base_title} | #{@title}"
    else
      base_title
    end
  end
  
end
