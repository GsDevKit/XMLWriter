private
writeBody
	self omitIfCanonical: [self writer nextPutAll: self contentModel]