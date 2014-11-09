private
writePrologue
	self omitIfCanonical: [
		self writer
			cr;
			nextPutAll: '<?xml']