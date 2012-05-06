# -*- encoding : utf-8 -*-
class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Вы успешно вошли"
    else
      redirect_to root_url, alert: "e-mail или пароль не верны"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Вы вышли"
  end
end
