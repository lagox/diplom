# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_categories
  respond_to :html
  
  def load_categories
    @list_categories = Category.all
    respond_with(@list_categories)
  end
  
end
