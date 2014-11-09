accessing
activeTagWriter
	self markupWriterStack reverseDo: [:each |
		each isTagWriter
			ifTrue: [^ each]].
	^ nil.
	