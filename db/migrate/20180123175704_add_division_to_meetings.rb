class AddDivisionToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :division, :string
  end
end
