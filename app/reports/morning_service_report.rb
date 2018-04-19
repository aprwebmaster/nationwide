class MorningServiceReport < Dossier::Report 

	def sql 
		#this query would display the previous 48 hours
		#'SELECT * FROM subcontractors WHERE created_at BETWEEN datetime("now", "start of day") AND datetime("now", "localtime");'

		#this query displays the previous days service report
		'SELECT * FROM service_records WHERE created_at >= date("now", "-1 days") AND created_at <  date("now")'
	end



end