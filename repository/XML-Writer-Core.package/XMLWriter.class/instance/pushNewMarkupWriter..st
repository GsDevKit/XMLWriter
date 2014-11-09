private
pushNewMarkupWriter: aMarkupWriterClass
	| newMarkupWriter |

	newMarkupWriter := aMarkupWriterClass writer: self.
	self activeMarkupWriter
		ifNotNil: [:activeMarkupWriter |
			activeMarkupWriter newMarkupWriterBeingPushed].

	^ self markupWriterStack addLast: newMarkupWriter.