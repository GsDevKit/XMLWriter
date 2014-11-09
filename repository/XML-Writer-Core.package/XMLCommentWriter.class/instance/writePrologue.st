private
writePrologue	
	self omitIfCanonicalInDTD: [
		self writer
			cr;
			nextPutAll: '<!--']