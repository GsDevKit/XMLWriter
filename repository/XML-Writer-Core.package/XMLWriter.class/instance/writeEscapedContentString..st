private
writeEscapedContentString: aString
	self
		nextPut: $";
		write: aString escapedWith: ContentStringEscapes;
		nextPut: $"