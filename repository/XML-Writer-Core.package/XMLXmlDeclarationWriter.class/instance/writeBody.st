private
writeBody
	self omitIfCanonical: [
		self writer
			writeName: 'version' unescapedValue: self version asString;
			space;
			writeName: 'encoding' unescapedValue: self encoding.

		self standalone
			ifTrue: [
				self writer
					space;
					writeName: 'standalone' unescapedValue: 'yes']]