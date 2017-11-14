class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_number
      t.string :code
      t.boolean :active
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :phone_number
      t.string :fax_number
      t.string :website
      t.string :contact_1
      t.string :contact_1_title
      t.integer :contact_1_phone
      t.string :contact_1_email
      t.string :contact_2
      t.string :contact_2_title
      t.integer :contact_2_phone
      t.string :contact_2_email
      t.string :contact_3
      t.string :contact_3_title
      t.integer :contact_3_phone
      t.string :contact_3_email
      t.string :accounts_payable_address_1
      t.string :accounts_payable_address_2
      t.string :accounts_payable_city
      t.string :accounts_payable_attn
      t.string :accounts_payable_contact_1
      t.integer :accounts_payable_contact_1_phone
      t.integer :accounts_payable_contact_1_fax
      t.string :accounts_payable_contact_1_email
      t.string :accounts_payable_contact_2
      t.integer :accounts_payable_contact_2_phone
      t.string :accounts_payable_contact_email
      t.boolean :contracted_services_basic
      t.boolean :contracted_services_strip
      t.boolean :contracted_services_backstrip
      t.boolean :contracted_services_extraction
      t.boolean :contracted_services_scrub
      t.boolean :contracted_services_buff
      t.boolean :contracted_services_windows
      t.boolean :contracted_services_grandopening
      t.boolean :contracted_services_halfstrip 

      t.timestamps
    end
  end
end
