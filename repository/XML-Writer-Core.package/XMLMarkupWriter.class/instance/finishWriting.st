writing markup
finishWriting
	self hasEmbeddedMarkupWriters
		ifTrue: [self writer writeUnwrittenMarkupWriterEmbeddedIn: self].
	self writeEpilogue.
	isWriting := false.

	self writer popActiveMarkupWriter.