# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
  def contacts
    @title = "Контакты"
  end
  
  def about
    @title = "О нас"
  end
end
