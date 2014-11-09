tests
testCDataSections
	| writer |

	(writer := XMLWriter new)
		tag: 'cdata'
		with: [
			writer cdata: '<escaped name="&value;" />'.
			writer cdata with: [
				writer tag
					name: 'escaped';
					with: [writer & 'value']]].

	self assert:
		writer contents =
			('<cdata>',
			'<![CDATA[<escaped name="&value;" />]]>',
			'<![CDATA[<escaped>&value;</escaped>]]>',
			'</cdata>').