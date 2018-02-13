class AddFrequencyToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :frequency, :string
  end

end
