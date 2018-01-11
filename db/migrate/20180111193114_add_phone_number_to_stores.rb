class AddPhoneNumberToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :phone_number, :string
  end
end
