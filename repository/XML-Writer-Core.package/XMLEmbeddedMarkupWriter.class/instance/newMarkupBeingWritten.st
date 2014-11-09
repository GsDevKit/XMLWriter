private
newMarkupBeingWritten
	self isWriting
		ifTrue: [self prepareForEmbeddedMarkup]
		ifFalse: [self write]