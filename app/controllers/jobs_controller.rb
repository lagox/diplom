# -*- encoding : utf-8 -*-
class JobsController < ApplicationController
  respond_to :html
  before_filter :authorize, :except => [:index, :show]
  before_filter :access_job, :only => [:edit, :update, :destroy]
  
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
    @job = Job.find(params[:id])
    respond_with(@job)
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
      flash[:notice] = "Работа успешно создана"
      respond_with(@job, location: root_path)
    else
      render 'new'
    end
  end
  
  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      flash[:notice] = "Работа успешно обновлена"
      respond_with(@job, location: @job)
    else
      render 'edit'
    end
  end
  
  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to(jobs_path, notice: "Работа успешно удалена")
  end
  
end
