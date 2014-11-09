private
hasEmbeddedMarkupWriter: aMarkupWriter
	^ self activeMarkupWriter == aMarkupWriter
		and: [self markupWriterStack size > 1]