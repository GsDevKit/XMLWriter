embedding markup
writeBody: aStringOrCollectionOrBlock
	aStringOrCollectionOrBlock
		ifNotNil: [self embedValue: aStringOrCollectionOrBlock]