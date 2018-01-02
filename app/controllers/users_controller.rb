class UsersController < ApplicationController

   def index
    @users = User.order(:name).paginate(page: params[:page], per_page: 10)
   end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params.require(:user).permit(:name, :role, :email))
    flash[:notice] = "\"#{@user.name}\" was updated successfully."
    redirect_to @user 
    else
    flash[:error] = "There was an error updating this account. Please try again."
    render :show
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy 
    flash[:notice] = "\"#{@user.name}\" was deleted successfully."
    redirect_to accounts_path 
    else
    flash[:error] = "There was an error deleting this account. Please try again."
    render :show
    end
  end

  private 

  def user_params
  params.require(:user).permit(:name, :id, :role, :email)
end
 end