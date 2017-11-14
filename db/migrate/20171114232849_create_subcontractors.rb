class CreateSubcontractors < ActiveRecord::Migration[5.1]
  def change
    create_table :subcontractors do |t|
      t.string :name
      t.integer :subcontractor_number
      t.string :owner
      t.string :address_1
      t.string :address_2
      t.string :city_state_zip
      t.integer :phone_1
      t.integer :phone_2
      t.string :email_address
      t.string :division
      t.string :route
      t.boolean :active
      t.string :business_license
      t.string :federal_number
      t.string :sca_rec
      t.string :sca_exp
      t.string :lwa_rec
      t.string :Nsqc_rec
      t.string :psqc
      t.string :bookkeeper
      t.string :lettstat
      t.string :chk_acct
      t.string :liability_carrier
      t.string :liability_expiration
      t.string :wcmp_car
      t.string :wcmp_exp

      t.timestamps
    end
  end
end
