class initialization
initializeEntityValueEscapes
	(EntityValueEscapes := Array new: 256)
		at: $" asciiValue put: '&#34;';
		at: $% asciiValue put: '&#37;';
		at: Character cr asciiValue put: #LineBreak;
		at: Character lf asciiValue put: #LineBreak.