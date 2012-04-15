# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_categories
  
  def load_categories
    @list_categories = Category.all
    @list_categories
  end
  
  private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    helper_method :current_user
    
    def authorize
      redirect_to root_url, alert: "Войдите в систему" if current_user.nil?
    end
    
    def access_job
      job = Job.find(params[:id])
      redirect_to root_url, 
        alert: "Вы не владелец данной работы" if job.user_id != current_user.id
    end
end
