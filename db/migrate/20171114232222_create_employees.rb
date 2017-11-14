class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :employee_number
      t.integer :route_number
      t.integer :subcenter_number
      t.string :address
      t.string :city
      t.integer :phone_number
      t.string :email_address
      t.string :ups
      t.string :division
      t.string :hire_date
      t.string :last_day
      t.integer :ssn
      t.string :license_number

      t.timestamps
    end
  end
end
