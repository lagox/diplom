# -*- encoding : utf-8 -*-
class CategoriesController < ApplicationController
  
  respond_to :html
  
  def show
    @category = Category.find(params[:id])
    @jobs = @category.jobs
    @title = @category.title
    respond_with(@jobs)
  end
  
end
