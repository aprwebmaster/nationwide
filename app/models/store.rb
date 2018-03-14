class Store < ApplicationRecord
  belongs_to :account
  has_many :service_records
 
  validates :account_id, presence: true 
  
=begin the below sql query works for heroku's postgre sql system (production environment) and will give an error
in the current mysql development environment.
=end 

	def self.search(search)
    where("name ILIKE ? OR chain ILIKE ? OR district ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

end
