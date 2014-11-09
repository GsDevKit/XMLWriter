accessing
xmlnsAt: aPrefix ifAbsentPut: aUriBlock
	^ self xmlnsDeclarations at: aPrefix ifAbsentPut: aUriBlock