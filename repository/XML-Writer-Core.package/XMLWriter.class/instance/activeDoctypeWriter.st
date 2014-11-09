accessing
activeDoctypeWriter
	self markupWriterStack reverseDo: [:each |
		each isDoctypeWriter
			ifTrue: [^ each]].
	^ nil.
	