class ChangeSubcontractorNumberToString < ActiveRecord::Migration[5.1]
  def change
  	change_column :subcontractors, :subcontractor_number, :string
  end
end
