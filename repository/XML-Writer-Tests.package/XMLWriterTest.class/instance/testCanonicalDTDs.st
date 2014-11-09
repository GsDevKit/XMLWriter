tests
testCanonicalDTDs
	| writer |

	(writer := XMLWriter new)
		isCanonical: true;
		comment: 'start of dtd'.
	writer doctype
		root: 'element';
		systemID: 'doc.dtd';
		with: [
			writer comment: 'ignored'.
			writer elementDeclaration
				name: 'ignored';
				contentModel: 'EMPTY'.
			writer entityDeclaration
				name: 'ignored';
				replacement: 'ignored'.
			writer attributeDeclaration
				element: 'ignored';
				attribute: 'ignored';
				type: 'CDATA';
				defaultPragma: '#REQUIRED'.
			writer notationDeclaration
				name: 'external';
				systemID: 'external.txt'.
			writer pi
				target: 'ignored';
				data: 'ignored'].
	writer comment: 'end of dtd'.

	self assert: writer contents = '<!--start of dtd--><!--end of dtd-->'.