# -*- encoding : utf-8 -*-
class CategoriesController < ApplicationController
  
  respond_to :html
  
  def show
    @jobs = Category.find(params[:id]).jobs
    respond_with(@jobs)
  end
  
end
