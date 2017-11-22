class ServiceCommentsController < ApplicationController
  def index
  	@service_comments = ServiceComment.all 
  end

  def show
  	@service_comment = ServiceComment.find(params[:id])
  end

  def new
  end

  def edit
  end
end
