class AddServiceRecordsToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :service_records_id, :integer
    add_index :stores, :service_records_id
  end
end
