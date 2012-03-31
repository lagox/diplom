# -*- encoding : utf-8 -*-
class JobsController < ApplicationController
  respond_to :html
  
  def index
    @jobs = Job.all
    respond_with(@jobs)
  end
  
  def show
    
  end
  
  def new
    
  end
  
  def edit
    
  end
  
  def create
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
end
