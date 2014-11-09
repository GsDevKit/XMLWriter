private
space
	(self isCanonical and: [self hasTrailingWhitespace])
		ifFalse: [stream space]