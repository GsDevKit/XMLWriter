private
newMarkup
	self activeMarkupWriter
		ifNotNil: [:activeMarkupWriter | activeMarkupWriter newMarkupBeingWritten]