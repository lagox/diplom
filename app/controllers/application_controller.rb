# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_categories
  
  def load_categories
    @list_categories = Category.all
    @list_categories
  end  
  
end
