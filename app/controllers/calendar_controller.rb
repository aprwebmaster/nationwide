class CalendarController < ApplicationController
  def index
  end

  def show
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today 
  	@service_records_by_date = ServiceRecord.all
  	puts @date 
  	puts @service_records_by_date
  end
end
