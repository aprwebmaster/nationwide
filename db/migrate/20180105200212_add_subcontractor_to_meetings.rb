class AddSubcontractorToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :subcontractor, :string
  end
end
