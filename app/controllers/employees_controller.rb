class EmployeesController < ApplicationController
def index
    @employees = Employee.order('created_at DESC').paginate(page: params[:page], per_page: 10)
    
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
    @subcontractor = Subcontractor.find(params[:subcontractor_id])
    @employee = @subcontractor.employees.new(employee_params)
 
    if @employee.save
     redirect_to [@subcontractor], notice: "Employee saved successfully."
    else
      redirect_to [@subcontractor], notice: "Employee failed to save."
    end
  end

  def new
    @employee = Employee.new 
  end

  def edit
  end

  def destroy
    @subcontractor = Subcontractor.find(params[:subcontractor_id])
    @employee = @subcontractor.employees.find(params[:id])
    if @employee.destroy 
    flash[:notice] = "Employee was deleted successfully."
    redirect_to @subcontractor
    else
    flash[:error] = "There was an error deleting this employee. Please try again."
    redirect_to @subcontractor
    end
  end

  private

  def employee_params 
    params.require(:employee).permit(:name, :employee_number, :ssn, :email_address, :phone_number, :license_number, :phone)
  end

end
