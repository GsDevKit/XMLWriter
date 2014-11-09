private
omitIfCanonicalInDTD: aBlock
	(self writer isCanonical
		and: [self isEmbedded
			and: [self writer activeDoctypeWriter notNil]])
		ifFalse: [aBlock value]