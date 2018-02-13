class AddServicePriceSubcontractorToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :sp_sub, :string
  end
end
