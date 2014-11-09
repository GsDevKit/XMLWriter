private
writeEndTag
	self writer
		nextPut: $<;
		nextPut: $/;
		writeName: self name;
		nextPut: $>