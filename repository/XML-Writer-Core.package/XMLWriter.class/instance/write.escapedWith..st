private
write: aString escapedWith: anEscapeTable
	| asciiValue replacement |

	self isEscaping
		ifFalse: [^ self nextPutAll: aString].

	aString do: [:each |
		((asciiValue := each asciiValue) > 0
			and: [asciiValue <= anEscapeTable size
				and: [(replacement := anEscapeTable at: asciiValue) notNil]])
			ifTrue: [
				stream nextPutAll:
					(replacement == #LineBreak
						ifTrue: [self lineBreak]
						ifFalse: [replacement])]
			ifFalse: [stream nextPut: each]]