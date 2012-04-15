# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to :back, :notice =>"Комментарий добавлен"
    else
      redirect_to :back, :alert =>"Ошибка: текст комментария пуст" 
    end
  end
  
  def index
    @comments = @job.comments
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
  
end
