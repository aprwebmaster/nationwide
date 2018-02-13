class AddStoreNameToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :store_name, :string
  end
end
