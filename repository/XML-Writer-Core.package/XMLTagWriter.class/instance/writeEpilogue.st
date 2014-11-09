private
writeEpilogue
	self hasEmbeddedMarkup
		ifTrue: [
			self writer outdent.
			self hasEmbeddedMarkupWriters
				ifTrue: [self writer cr].
			self writeEndTag]
		ifFalse: [
			(self writer isCanonical
				or: [self writer outputsSelfClosingTags not])
				ifTrue: [
					self writer nextPut: $>.
					self writeEndTag]
				ifFalse: [
					self writer
						space;
						nextPut: $/;
						nextPut: $>]].