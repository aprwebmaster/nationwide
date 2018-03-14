class StoresController < ApplicationController
  def index
  	@stores = Store.order(:name).paginate(page: params[:page], per_page: 10)

    if params[:search]
      @stores = Store.search(params[:search]).order(:name).paginate(page: params[:page], per_page: 10)
    else
      @stores = Store.order(:name).paginate(page: params[:page], per_page: 10)
    end
  end

  def show
    @store = Store.find(params[:id]) 
    @service_records = @store.service_records.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @service_record = @store.service_records.build 
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
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    
    if @store.update_attributes(params.require(:store).permit(:name, :chain, :code, :phone, :manager, :store, :region, :district, :active, :phone_number, :square_footage, :frequency, :sp_sub, :sp_corp, :address, :zipcode, :state, :city))
    flash[:notice] = "Store was updated."
    redirect_to @store
  else
    flash[:error] = "There was an error saving this store. Please try again."
    render :edit
  end
end

  def destroy
    @account = Account.find(params[:account_id])
    @store = @account.stores.find(params[:id])
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
    params.require(:store).permit(:name, :chain, :code, :phone, :manager, :store, :region, :district, :active, :phone_number, :square_footage, :frequency, :sp_sub, :sp_corp, :address, :zipcode, :state, :city)
  end




end
