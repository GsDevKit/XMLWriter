tests
testCanonicalTags
	| writer |

	(writer := XMLWriter new)
		isCanonical: true;
		comment: 'tags'.
	(writer tag: 'tags')
		attributeAt: 'c' put: '3';
		attributeAt: 'a' put: '1';
		attributeAt: 'b' put: '2';
		xmlnsAt: 'b' put: 'ns2';
		xmlnsAt: 'a' put: 'ns1';
		xmlns: 'default';
		with: [
			writer
				tag: 'cdata'
				with: [writer cdata: '<escaped name="&value;" />'].
			writer
				tag: 'empty'
				with: nil].

	self assert:
		writer contents =
			('<!--tags-->',
			'<tags xmlns="default" xmlns:a="ns1" xmlns:b="ns2" a="1" b="2" c="3">',
			'<cdata>&lt;escaped name="&amp;value;" /></cdata>',
			'<empty></empty>',
			'</tags>').