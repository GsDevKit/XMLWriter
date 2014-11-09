accessing
xmlnsDeclarations
	^ xmlnsDeclarations ifNil: [xmlnsDeclarations := OrderPreservingDictionary new: 5 withDefaultValue: '']