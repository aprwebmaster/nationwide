class Account < ApplicationRecord
	has_many :service_comments, dependent: :destroy
	has_many :stores, dependent: :destroy

=begin the below sql query works for heroku's postgre sql system (production environment) and will give an error
in the current mysql development environment.
=end 

	def self.search(search)
    where("name ILIKE ? OR account_number ILIKE ? OR code ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end


end
