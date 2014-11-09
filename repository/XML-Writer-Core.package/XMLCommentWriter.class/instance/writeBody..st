private
writeBody: aStringOrCollectionOrBlock
	self omitIfCanonicalInDTD: [super writeBody: aStringOrCollectionOrBlock]