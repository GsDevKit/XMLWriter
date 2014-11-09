embedding markup
with: aStringOrCollectionOrBlock
	self isWriting ifFalse: [
		self
			startWriting;
			writeBody: aStringOrCollectionOrBlock;
			finishWriting]