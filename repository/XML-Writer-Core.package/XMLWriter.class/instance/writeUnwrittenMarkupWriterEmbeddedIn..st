private
writeUnwrittenMarkupWriterEmbeddedIn: aMarkupWriter
	self activeMarkupWriter
		ifNotNil: [:activeMarkupWriter |
			activeMarkupWriter == aMarkupWriter
				ifFalse: [activeMarkupWriter write]]