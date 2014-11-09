private
writeBody
	self omitIfCanonical: [
		self writer
			writeName: self attribute;
			space;
			writeName: self type.

		self
			writeDefaultPragma;
			writeDefaultValue]