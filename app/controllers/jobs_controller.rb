class JobsController < ApplicationController
  respond_to :html
  
  def index
    @jobs = Job.all
    @title = "Все работы"
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
