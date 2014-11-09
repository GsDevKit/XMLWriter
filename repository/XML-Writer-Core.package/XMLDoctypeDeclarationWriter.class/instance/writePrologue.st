private
writePrologue
	self omitIfCanonical: [
		self writer
			cr;
			nextPutAll: '<!DOCTYPE';
			space;
			writeName: self root.

		self externalIDWriter hasExternalID
			ifTrue: [
				self writer space.
				self externalIDWriter writeOn: self writer]]