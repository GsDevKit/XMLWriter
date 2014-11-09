private
writeEpilogue
	self omitIfCanonical: [
		self hasEmbeddedMarkup
			ifTrue: [
				self writer
					outdent;
					cr;
					nextPut: $]].
		self writer
			nextPut: $>;
			cr]