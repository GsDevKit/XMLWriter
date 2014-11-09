writing markup
writeOn: aWriter
	self publicID
		ifNotEmpty: [:id |
			aWriter
				nextPutAll: 'PUBLIC';
				space;
				writeUnescapedString: id]
		ifEmpty: [
			self systemID
				ifNotEmpty: [aWriter nextPutAll: 'SYSTEM']].

	self systemID ifNotEmpty: [:id |
		aWriter
			space;
			writeUnescapedString: id].