private
writeBody
	self omitIfCanonical: [
		self replacement
			ifNotEmpty: [self writer writeEscapedEntityValueString: self replacement]
			ifEmpty: [
				self externalIDWriter writeOn: self writer.
				(self isParameter not and: [self ndata notEmpty])
					ifTrue: [
						self writer
							space;
							nextPutAll: 'NDATA';
							space;
							writeName: self ndata]]]