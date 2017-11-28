class AccountsController < ApplicationController
  def index
  	@accounts = Account.all 
  end

  def show
  	@account = Account.find(params[:id])
    @service_comments = @account.service_comments
    @service_comment = @account.service_comments.build 

  end

  def new
    @account = Account.new 
  end

  def create
    @account = Account.new(params.require(:account).permit(:name, :account_number, :code, :active, :address_1, :address_2, :city,
     :phone_number, :fax_number, :website, :contact_1, :contact_1_title, :contact_1_phone, :contact_1_email, :contact_2, :contact_2_title,
     :contact_2_phone, :contact_2_email, :contact_3, :contact_3_title, :contact_3_phone, :contact_3_email, :accounts_payable_address_1, 
     :accounts_payable_address_2, :accounts_payable_city, :accounts_payable_attn, :accounts_payable_contact_1, :accounts_payable_contact_1_phone,
     :accounts_payable_contact_1_fax, :accounts_payable_contact_1_email, :accounts_payable_contact_2, :accounts_payable_contact_2_phone, 
     :accounts_payable_contact_2_fax, :accounts_payable_contact_2_email, :contracted_services_basic, :contracted_services_strip, :contracted_services_backstrip,
     :contracted_services_extraction, :contracted_services_scrub, :contracted_services_buff, :contracted_services_windows, :contracted_services_grandopening,
     :contracted_services_halfstrip ))
    if @account.save
      flash[:notice] = "Account was successfully saved."
      redirect_to @account 
    else
      flash[:error] = "There was an error saving your new account. Please try again."
      render :new
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params.require(:account).permit(:name, :account_number, :code, :active, :address_1, :address_2, :city,
     :phone_number, :fax_number, :website, :contact_1, :contact_1_title, :contact_1_phone, :contact_1_email, :contact_2, :contact_2_title,
     :contact_2_phone, :contact_2_email, :contact_3, :contact_3_title, :contact_3_phone, :contact_3_email, :accounts_payable_address_1, 
     :accounts_payable_address_2, :accounts_payable_city, :accounts_payable_attn, :accounts_payable_contact_1, :accounts_payable_contact_1_phone,
     :accounts_payable_contact_1_fax, :accounts_payable_contact_1_email, :accounts_payable_contact_2, :accounts_payable_contact_2_phone, 
     :accounts_payable_contact_2_fax, :accounts_payable_contact_2_email, :contracted_services_basic, :contracted_services_strip, :contracted_services_backstrip,
     :contracted_services_extraction, :contracted_services_scrub, :contracted_services_buff, :contracted_services_windows, :contracted_services_grandopening,
     :contracted_services_halfstrip ))
    flash[:notice] = "Account was updated."
    redirect_to @account
  else
    flash[:error] = "There was an error saving this account. Please try again."
    render :edit
  end
end

end
