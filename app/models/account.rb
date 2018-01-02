class Account < ApplicationRecord
	has_many :service_records, dependent: :destroy 
	has_many :service_comments, dependent: :destroy
	has_many :stores, dependent: :destroy

	def self.search(search)
    where("name ILIKE ? OR account_number ILIKE ? OR code ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end


end
