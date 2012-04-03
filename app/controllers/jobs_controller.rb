# -*- encoding : utf-8 -*-
class JobsController < ApplicationController
  respond_to :html
  before_filter :authorize, :except => [:index, :show]
  
  def index
    @jobs = Job.all
    respond_with(@jobs)
  end
  
  def show
    
  end
  
  def new
    @job = Job.new
    respond_with(@job)
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
