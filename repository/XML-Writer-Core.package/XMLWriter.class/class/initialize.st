class initialization
initialize
	"self initialize"

	super initialize.
	self
		initializeContentEscapes;
		initializeContentStringEscapes;
		initializeEntityValueEscapes.