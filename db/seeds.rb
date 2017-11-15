# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
 
 # Create Posts
 5.times do
   Account.create!(
     name: Faker::Name.name_with_middle,
     account_number: Faker::Lorem.sentence,
     code: Faker::Lorem.sentence,
     active: Faker::Boolean.boolean, 
     address_1: Faker::Address.street_address, 
     address_2: Faker::Address.secondary_address,
     city: Faker::Address.city,
     phone_number: Faker::PhoneNumber.cell_phone,
     fax_number: Faker::PhoneNumber.cell_phone,
     website: Faker::Lorem.sentence,
     contact_1: Faker::Name.name_with_middle,
     contact_1_title: Faker::Name.title, 
     contact_1_phone: Faker::PhoneNumber.cell_phone,
     contact_1_email: Faker::Lorem.word,
     contact_2: Faker::Name.name_with_middle, 
     contact_2_title: Faker::Name.title,
     contact_2_phone: Faker::PhoneNumber.cell_phone,
     contact_2_email: Faker::Lorem.word,
     contact_3: Faker::Name.name_with_middle, 
     contact_3_title: Faker::Name.title,
     contact_3_phone: Faker::PhoneNumber.cell_phone,
     contact_3_email: Faker::Lorem.word,
     accounts_payable_address_1: Faker::Address.street_address,
     accounts_payable_address_2: Faker::Address.secondary_address,
     accounts_payable_city: Faker::Address.city,
     accounts_payable_attn:  Faker::Name.name_with_middle, 
     accounts_payable_contact_1: Faker::Name.name_with_middle, 
     accounts_payable_contact_1_phone: Faker::PhoneNumber.cell_phone,
     accounts_payable_contact_1_fax: Faker::PhoneNumber.cell_phone,
     accounts_payable_contact_1_email: Faker::Lorem.word,
     accounts_payable_contact_2: Faker::Name.name_with_middle, 
     accounts_payable_contact_2_phone: Faker::PhoneNumber.cell_phone,
     accounts_payable_contact_email: Faker::Lorem.word,
     contracted_services_basic: Faker::Boolean.boolean,
     contracted_services_strip: Faker::Boolean.boolean,
     contracted_services_backstrip: Faker::Boolean.boolean,
     contracted_services_extraction: Faker::Boolean.boolean,
     contracted_services_scrub: Faker::Boolean.boolean,
     contracted_services_buff: Faker::Boolean.boolean,
     contracted_services_windows: Faker::Boolean.boolean,
     contracted_services_grandopening: Faker::Boolean.boolean,
     contracted_services_halfstrip: Faker::Boolean.boolean
   )
 end
 accounts = Account.all
 
 # Create Comments
 10.times do
   ServiceComment.create!(
     account: accounts.sample,
     body: Faker::Lorem.paragraph,
     store: Faker::Lorem.words,
     date: Faker::Date.forward(23),
     contacted_manager: Faker::Name.name_with_middle,
     store_manager: Faker::Name.name_with_middle
   )
 end
 
 puts "Seed finished"
 puts "#{Account.count} accounts created"
 puts "#{ServiceComment.count} comments created"