private
omitIfCanonical: aBlock
	self writer isCanonical
		ifFalse: [aBlock value]