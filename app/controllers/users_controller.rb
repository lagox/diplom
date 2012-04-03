# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  
  respond_to :html
  
  def index
    @users = User.all
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
      redirect_to root_url, notice: "Спасибо, за регистрацию на нашем ресурсе"
    else
      render 'new'
    end
  end
end
