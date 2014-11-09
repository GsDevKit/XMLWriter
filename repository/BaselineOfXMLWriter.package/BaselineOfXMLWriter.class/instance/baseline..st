as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #gemstone do: [ 
		spec
			project: 'OrderPreservingDictionary'
			with: [ 
				spec
					className: 'ConfigurationOfOrderPreservingDictionary';
					versionString: #stable;
					loads: #('Core');
					repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main' ].
				
		spec
			package: 'Collections-Support'
			with: [ 
					spec
						file: 'Collections-Support.g';
						repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ];
			package: 'Collections-Tests-Support'
			with: [ 
					spec
						file: 'Collections-Tests-Support.g';
						requires: 'Collections-Support';
						repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ].
					
		spec package: 'XML-Writer-Core' with: [ spec requires: 'OrderPreservingDictionary' ].
		spec package: 'XML-Writer-Tests' with: [ spec requires: 'XML-Writer-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('XML-Writer-Core');
			group: 'Tests' with: #('XML-Writer-Tests')
	]