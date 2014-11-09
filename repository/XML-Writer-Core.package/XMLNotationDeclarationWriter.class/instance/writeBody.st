private
writeBody
	self omitIfCanonical: [self externalIDWriter writeOn: self writer]