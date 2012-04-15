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
  
  def isset_avatar(object)
    if object.nil?
      image_tag('default-avatar.png')
    else
      image_tag(object)
    end
  end
  
  def description_user(object)
    desc = object.description
    empty_desc = "Увы, пользователь не оставил информации о себе"
    desc.nil? ? empty_desc : desc
  end
  
  def type_user(object)
    case object.typeuser
    when "photo"
      "Фотограф"
    when "design"
      "Дизайнер"
    else
      "Неизвестно"
    end
  end
  
  def name_in_header(object)
    name = object.name
    if name.nil?
      link_to(object.email, object)
    else
      link_to(name, object)
    end
  end
  
end
