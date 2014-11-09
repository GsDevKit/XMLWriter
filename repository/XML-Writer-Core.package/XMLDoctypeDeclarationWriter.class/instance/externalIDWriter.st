accessing
externalIDWriter
	^ externalIdWriter ifNil: [externalIdWriter := XMLExternalIDWriter new]