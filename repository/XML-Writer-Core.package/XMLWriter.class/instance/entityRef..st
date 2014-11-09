writing markup
entityRef: aName
	self
		newMarkup;
		nextPut: $&;
		writeName: aName;
		nextPut: $;