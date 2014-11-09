writing markup
writeWith: aBlock
	^ self new
		writeWith: aBlock;
		contents