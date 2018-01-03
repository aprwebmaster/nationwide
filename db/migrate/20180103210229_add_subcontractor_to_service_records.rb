class AddSubcontractorToServiceRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :service_records, :subcontractor, :string
  end
end
