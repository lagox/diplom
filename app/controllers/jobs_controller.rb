# -*- encoding : utf-8 -*-
class JobsController < ApplicationController
  respond_to :html
  before_filter :authorize, :except => [:index, :show]
  
  def index
    @jobs = Job.all
    respond_with(@jobs)
  end
  
  def show
    @job = Job.find(params[:id])
    @title = @job.title
    respond_with(@job)
  end
  
  def new
    @job = Job.new
    respond_with(@job)
  end
  
  def edit
    
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
      flash[:notice] = "Работа успешно создана"
      respond_with(@job, location: jobs_path)
    else
      render 'new'
    end
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
end
