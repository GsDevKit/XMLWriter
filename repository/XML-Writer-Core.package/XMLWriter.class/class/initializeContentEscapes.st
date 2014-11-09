class initialization
initializeContentEscapes
	(ContentEscapes := Array new: 256)
		at: $& asciiValue put: '&amp;';
		at: $< asciiValue put: '&lt;';
		at: Character cr asciiValue put: #LineBreak;
		at: Character lf asciiValue put: #LineBreak.