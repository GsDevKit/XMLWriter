writing markup
write
	self isWriting ifFalse: [
		self
			startWriting;
			writeBody;
			finishWriting]