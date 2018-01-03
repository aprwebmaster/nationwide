class Subcontractor < ApplicationRecord

	def self.search(search)
    where("name ILIKE ? OR subcontractor_number ILIKE ? OR federal_number ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end


end
