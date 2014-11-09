private
newMarkupWriterBeingPushed
	self isWriting
		ifTrue: [
			self prepareForEmbeddedMarkup.
			hasEmbeddedMarkupWriters := true]
		ifFalse: [self write]