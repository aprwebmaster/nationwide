class AddPhoneNumberToSubcontractors < ActiveRecord::Migration[5.1]
  def change
    add_column :subcontractors, :phone_number, :string
  end
end
