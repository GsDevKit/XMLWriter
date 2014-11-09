private
prepareForEmbeddedMarkup
	self hasEmbeddedMarkup
		ifFalse: [
			hasEmbeddedMarkup := true.
			self writeEmbeddedMarkupPrologue]