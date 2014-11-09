private
writeXmlnsDeclarations
	xmlnsDeclarations ifNil: [^ self].

	self
		writeKeysAndValuesFrom: xmlnsDeclarations
		with: [:prefix :uri |
			self writer
				writeName:
					(prefix
						ifEmpty: ['xmlns']
						ifNotEmpty: ['xmlns:', prefix])
				escapedContentValue: uri].