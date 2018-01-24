class Subcontractor < ApplicationRecord
	has_many :employees, dependent: :destroy  

	def self.search(search)
    where("name ILIKE ? OR subcontractor_number ILIKE ? OR federal_number ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end


end
