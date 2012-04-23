# -*- encoding : utf-8 -*-
class SearchController < ApplicationController
  def index
    jobs = Job.search(params[:search])
    @jobs = Kaminari.paginate_array(jobs).page(params[:page]).per(12)
  end
end
