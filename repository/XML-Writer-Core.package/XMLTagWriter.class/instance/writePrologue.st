private
writePrologue
	self writer
		cr;
		nextPut: $<;
		writeName: self name.
	self
		writeXmlnsDeclarations;
		writeAttributes.