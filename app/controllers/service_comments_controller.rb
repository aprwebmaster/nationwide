class ServiceCommentsController < ApplicationController
  def index
  	@service_comments = ServiceComment.all 
  end

  def show
  	@service_comment = ServiceComment.find(params[:id])
  end

  def create
 
     @account = Account.find(params[:account_id])
     @service_comment = @account.service_comments.new(service_comment_params)
 
    if @service_comment.save
     redirect_to [@account], notice: "Comment saved successfully."
    else
      redirect_to [@account], notice: "Comment failed to save."
    end
  end


  def new
    @service_comment = ServiceComment.new 
  end


  
  def edit

  end

  def destroy
    @account = Account.find(params[:account_id])
    @service_comment = @account.service_comments.find(params[:id])
  if @service_comment.destroy 
    flash[:notice] = "Comment was deleted successfully."
    redirect_to @account
  else
    flash[:error] = "There was an error deleting this comment. Please try again."
    redirect_to @account
  end
end

  private 

  def service_comment_params
    params.require(:service_comment).permit(:body, :date, :contacted_manager, :store_manager, :store)
  end




end
