accessing
activeMarkupWriter
	"for speed"
	^ markupWriterStack size > 0
		ifTrue: [markupWriterStack at: markupWriterStack size]
		ifFalse: [nil]