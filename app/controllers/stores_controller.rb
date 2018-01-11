class StoresController < ApplicationController
  def index
  	@stores = Store.all 
  end

  def show
    @store = Store.find(params[:id]) 
  end

  def create
 
     @account = Account.find(params[:account_id])
     @store = @account.stores.new(store_params)
 
    if @store.save
     redirect_to [@account], notice: "Store saved successfully."
    else
      redirect_to [@account], notice: "Store failed to save."
    end
  end


  def new
    @store = Store.new 
  end


  
  def edit

  end

  def destroy
    @account = Account.find(params[:account_id])
    @store = @account.store.find(params[:id])
  if @store.destroy 
    flash[:notice] = "Store was deleted successfully."
    redirect_to @account
  else
    flash[:error] = "There was an error deleting this store. Please try again."
    redirect_to @account
  end
end

  private 

  def store_params
    params.require(:store).permit(:name, :chain, :code, :phone, :manager, :store, :region, :district, :active)
  end




end
