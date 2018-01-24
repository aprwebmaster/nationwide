class SubcontractorsController < ApplicationController
  def index
    @subcontractors = Subcontractor.order(:name).paginate(page: params[:page], per_page: 10)
    
  if params[:search]
    @subcontractors = Subcontractor.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 10)
  else
    @subcontractors = Subcontractor.order(:name).paginate(page: params[:page], per_page: 10)
  end

  end

  def show
  	@subcontractor = Subcontractor.find(params[:id])
    @all_employees = @subcontractor.employees.all.order('created_at DESC')
    @employees = @subcontractor.employees.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @employee = @subcontractor.employees.build
  end

  def new
    @subcontractor = Subcontractor.new 
    

  end

  def create
    @subcontractor = Subcontractor.new(params.require(:subcontractor).permit(:name, :subcontractor_number, :owner, :address_1, :address_2, :city_state_zip,
     :phone_number, :email_address, :division, :route, :active, :business_license, :federal_number, :sca_rec, :sca_exp, :lwa_rec, :Nsqc_rec, :psqc, :bookkeeper,
     :lettstat, :chk_acct, :liability_carrier, :liability_expiration, :wcmp_car, :wcmp_exp))
   
    if @subcontractor.save
      flash[:notice] = "Subcontractor was successfully saved."
      redirect_to @subcontractor
    else
      flash[:error] = "There was an error saving your new subcontractor. Please try again."
      render :new
    end
  end

  def edit
    @subcontractor = Subcontractor.find(params[:id])
  end

  def update
    @subcontractor = Subcontractor.find(params[:id])
    if @subcontractor.update_attributes(params.require(:subcontractor).permit(:name, :subcontractor_number, :owner, :address_1, :address_2, :city_state_zip,
     :phone_number, :email_address, :division, :route, :active, :business_license, :federal_number, :sca_rec, :sca_exp, :lwa_rec, :Nsqc_rec, :psqc, :bookkeeper,
     :lettstat, :chk_acct, :liability_carrier, :liability_expiration, :wcmp_car, :wcmp_exp))
    flash[:notice] = "Subcontractor was updated."
    redirect_to @subcontractor
  else
    flash[:error] = "There was an error saving this subcontractor. Please try again."
    render :edit
  end
end

def destroy
@subcontractor = Subcontractor.find(params[:id])

  if @subcontractor.destroy 
    flash[:notice] = "\"#{@subcontractor.name}\" was deleted successfully."
    redirect_to subcontractors_path 
  else
    flash[:error] = "There was an error deleting this subcontractor. Please try again."
    render :show
  end
end

end
