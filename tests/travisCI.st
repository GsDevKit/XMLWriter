"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load Zinc ... "
Metacello new
  baseline: 'XMLWriter';
  repository: 'filetree://', gitPath, '/XMLWriter/repository';
  load: #('Tests').

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfXMLWriter' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
