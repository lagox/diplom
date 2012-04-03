# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def title
    return @title if defined?(@title)
    "Диплом"
  end
  
  def error_messages_for(object)
    render(:partial => 'shared/error_messages', :locals => {:object => object})
  end
  
  def flash_msg(object)
    render(:partial => 'shared/flashmsg', :locals => {:object => object})
  end
end
