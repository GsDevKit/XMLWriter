accessing
xmlnsDeclarations: aDictionaryOrArray
	"set xmlns decls using a dictionary or array of prefix/uri associations.
	empty prefix is default xmlns."
	(xmlnsDeclarations := OrderPreservingDictionary newFrom: aDictionaryOrArray)  defaultValue: ''