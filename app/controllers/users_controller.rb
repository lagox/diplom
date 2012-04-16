# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  
  respond_to :html
  before_filter :authorize, :only => [:settings]
  
  def index
    @users = User.page params[:page]
    @title = "Все дизайнеры"
    respond_with(@users)
  end
  
  def show
    @user = User.find(params[:id])
    respond_with(@user)
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Спасибо, за регистрацию на нашем ресурсе'
    else
      render 'new'
    end
  end
  
  def settings
    if current_user
      @user = User.find(current_user.id)  
    end
    redirect_to(root_url, notice: 'Такого пользователя нет') if @user.nil?
    @title = 'Настройки профиля'
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Пользователь успешно обновлен"
      respond_with(@user, location: @user)
    else
      render 'settings'
    end
  end
  
  # other methods
  
  def photographers
    @users = User.photo.page params[:page]
  end
  
  def designers
    @users = User.design.page params[:page]
  end
  
end
