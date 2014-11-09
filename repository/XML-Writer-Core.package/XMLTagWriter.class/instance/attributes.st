accessing
attributes
	^ attributes ifNil: [attributes := OrderPreservingDictionary defaultValue: '']