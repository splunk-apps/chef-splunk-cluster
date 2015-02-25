# Index Management - Empty values do not get deployed.
# http://docs.splunk.com/Documentation/Splunk/latest/admin/indexesconf
default['splunk']['indexes'] = {
	# Index Name
	"main" => {
		# Path to Warm/Hot db
		"homePath" => "$SPLUNK_DB/defaultdb/db",

		# Path to Cold db
		"coldPath" => "$SPLUNK_DB/defaultdb/colddb",
		
		# Path to thawed db (moved from frozen)
		"thawedPath" => "$SPLUNK_DB/defaultdb/thaweddb",
		
		# Path to frozen db
		"coldToFrozenDir" => "$SPLUNK_DB/defaultdb/frozendb",
		
		# Max data size of a bucket.  Moved from hot to warm after this.
		"maxDataSize" => "auto_high_volume", # Default
		
		 # Max number of warm db's.  Moved to cold after this number
		"maxWarmDBCount" => "300", # Default
		
		# Number of seconds before data is moved from either warm/cold to frozen
		"frozenTimePeriodInSecs" => "188697600", # Default
		
		# Max size of the entire (hot/warm/cold).  
		# Once reached, data will be frozen if a coldToFrozenDir option is defined.
		"maxTotalDataSizeMB" => "500000" # Default
	}
}