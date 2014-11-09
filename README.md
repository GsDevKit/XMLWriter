XMLWriter [![](https://travis-ci.org/GsDevKit/XMLWriter.svg?branch=master)](https://travis-ci.org/GsDevKit/XMLWriter)
=========

This is the GemStone/S port of [http://www.smalltalkhub.com/#!/~PharoExtras/XMLWriter/]. This package provides a Seaside-like, block-based API for XML generation and was originally migrated from SqueakSource project XMLWriter developed by JAA.

## Loading into GemStone

Install the latest commit from the master branch:
```Smalltalk
Metacello new
  baseline: 'XMLWriter';
  repository: 'github://GsDevKit/XMLWriter:master/repository';
  load.
```

Install a particular version, e.g. 2.3.10 (see [Releases](https://github.com/GsDevKit/XMLWriter/releases) for a list of possible versions):
```Smalltalk
Metacello new
  baseline: 'XMLWriter';
  repository: 'github://GsDevKit/XMLWriter:v2.3.10/repository';
  load.
```