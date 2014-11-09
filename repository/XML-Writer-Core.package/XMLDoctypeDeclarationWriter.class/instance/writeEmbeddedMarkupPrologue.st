private
writeEmbeddedMarkupPrologue
	self omitIfCanonical: [
		self writer
			space;
			nextPut: $[;
			indent]