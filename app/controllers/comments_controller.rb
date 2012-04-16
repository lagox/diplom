# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to :back, :notice =>"Комментарий добавлен" }
        format.js
      end
    else
      respond_to do |format|
        format.html {redirect_to :back, :alert =>"Ошибка: текст комментария пуст" }
        format.js
      end
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
