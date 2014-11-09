private
writeBody
	self omitIfCanonicalInDTD: [
		self writer
			space;
			nextPutAll: self data]