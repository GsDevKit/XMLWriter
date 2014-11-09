private
embedString: aString
	self prepareForEmbeddedMarkup.

	self escapesEmbeddedStrings
		ifTrue: [self writer writeEscapedContent: aString]
		ifFalse: [self writer nextPutAll: aString]