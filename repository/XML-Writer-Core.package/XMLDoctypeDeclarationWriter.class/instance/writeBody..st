embedding markup
writeBody: aStringOrCollectionOrBlock
	self omitIfCanonical: [super writeBody: aStringOrCollectionOrBlock]