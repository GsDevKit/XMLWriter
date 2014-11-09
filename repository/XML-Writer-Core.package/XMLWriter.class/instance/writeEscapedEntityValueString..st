private
writeEscapedEntityValueString: aString
	self
		nextPut: $";
		write: aString escapedWith: EntityValueEscapes;
		nextPut: $"