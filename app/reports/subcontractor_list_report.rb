class SubcontractorListReport < Dossier::Report 

	def sql 
		#Subcontractor.where(name: true).to_sql 
		'SELECT * FROM subcontractors'
	end



end