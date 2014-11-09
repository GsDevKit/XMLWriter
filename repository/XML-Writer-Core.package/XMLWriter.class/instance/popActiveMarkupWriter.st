private
popActiveMarkupWriter
	self markupWriterStack ifNotEmpty: [:stack | stack removeLast]