writing markup
write
	self activeMarkupWriter
		ifNotNil: [:activeMarkupWriter |
			(activeMarkupWriter isWriting)
				ifTrue: [activeMarkupWriter finishWriting]
				ifFalse: [activeMarkupWriter write]]