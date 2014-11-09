tests
testPrettyPrintingDTDs
	| writer  |

	(writer := XMLWriter new)
		enablePrettyPrinting;
		xml.
	writer doctype
		root: 'pretty';
		with: [
			writer comment: 'element'.
			writer elementDeclaration
				name: 'pretty';
				contentModel: 'EMPTY'.
			writer comment: 'entity'.
			writer entityDeclaration
				isParameter: true;
				name: 'comment';
				replacement: '<!--attribute-->'.
			writer % 'comment'.
			writer attributeDeclaration
				element: 'pretty';
				attribute: 'name';
				type: 'CDATA';
				defaultPragma: '#REQUIRED'.
			writer comment: 'notation'.
			writer notationDeclaration
				name: 'external';
				systemID: 'external.txt'].

	self assert: writer contents = '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pretty [
    <!--element-->
    <!ELEMENT pretty EMPTY>
    <!--entity-->
    <!ENTITY % comment "<!--attribute-->">
    %comment;
    <!ATTLIST pretty name CDATA #REQUIRED>
    <!--notation-->
    <!NOTATION external SYSTEM "external.txt">
]>
'.