class AccountsController < ApplicationController
  def index
  	@accounts = Account.all 
  end

  def show
  	@account = Account.find(params[:id])
  end

  def new
  end

  def edit
  end
end
