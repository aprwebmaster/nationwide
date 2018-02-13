class AddStoreToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :store_id, :integer
    add_index :service_records, :store_id
  end
end
