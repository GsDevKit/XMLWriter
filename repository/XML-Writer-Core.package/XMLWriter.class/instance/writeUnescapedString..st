private
writeUnescapedString: aString
	| quote |

	quote := (aString includes: $") ifTrue: [$'] ifFalse: [$"].

	self nextPut: quote.
	aString do: [:each |
		"strip delimiter because it can't be escaped with an entity in this type of string"
		each == quote
			ifFalse: [self nextPut: each]].
	self nextPut: quote.