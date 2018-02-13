class AddServicePriceCorporateToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :sp_corp, :string
  end
end
