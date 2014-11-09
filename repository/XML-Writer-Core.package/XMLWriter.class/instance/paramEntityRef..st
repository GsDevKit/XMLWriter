writing markup
paramEntityRef: aName
	self
		newMarkup;
		cr;
		nextPut: $%;
		writeName: aName;
		nextPut: $;