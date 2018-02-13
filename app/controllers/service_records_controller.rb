class ServiceRecordsController < ApplicationController
  def index
    @service_records = ServiceRecord.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    
  end

  def show
    @service_record = ServiceRecord.find(params[:id])
  end

  def create
    @store = Store.find(params[:store_id])
    @service_record = @store.service_records.new(service_record_params)

 
    if @service_record.save
     redirect_to [@store], notice: "Record saved successfully."
    else
      redirect_to [@store], notice: "Record failed to save."
    end
  end

  def new
    @service_record = ServiceRecord.new 
  end

  def edit
  end

  def destroy
    @store = Store.find(params[:store_id])
    @service_record = @account.store.service_records.find(params[:id])
    if @service_record.destroy 
    flash[:notice] = "Record was deleted successfully."
    redirect_to @store
    else
    flash[:error] = "There was an error deleting this record. Please try again."
    redirect_to @store
    end
  end

  private

  def service_record_params 
    params.require(:service_record).permit(:manager, :date, :service_type, :report_in, :store_name, :subcontractor, :body)
  end

end
