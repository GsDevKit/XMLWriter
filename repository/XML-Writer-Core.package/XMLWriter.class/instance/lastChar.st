private
lastChar
	^ self atStart
		ifTrue: [nil]
		ifFalse: [stream peekLast asCharacter]