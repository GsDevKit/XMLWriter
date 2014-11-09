private
writeAttributes
	attributes ifNotNil: [
		self
			writeKeysAndValuesFrom: attributes
			with: [:attributeName :attributeValue |
				self writer
					writeName: attributeName
					escapedContentValue: attributeValue]]