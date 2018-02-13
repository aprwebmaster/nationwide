class AddSquareFootageToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :square_footage, :string
  end
end
