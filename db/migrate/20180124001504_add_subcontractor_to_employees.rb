class AddSubcontractorToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :subcontractor_id, :integer
    add_index :employees, :subcontractor_id
  end
end
