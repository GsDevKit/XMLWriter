private
writeName: aName value: aValue isEscapedContent: aBoolean
	(self atStart or: [self hasTrailingWhitespace])
		ifFalse: [stream space].

	self
		writeName: aName;
		nextPut: $=.
	aBoolean
		ifTrue: [self writeEscapedContentString: aValue]
		ifFalse: [self writeUnescapedString: aValue].