# Product Docs are imported using git submodules in /product-docs.  These can be updated using `git submodule update –remote`
# or `make pull`
#
# We need to copy these into the docusaurus tree before building the docs website.  Note that we can't simply symlink them
# because (a) the request router uses the realpath, which lies outside the /docs tree, and (b) there are some additions to
# the frontmatter we want to make for the docs site 
#
# This makefile only needs to be run when the product docs submodules are updated, either because of a submodule update,
# or because of a local edit.  Note that local edits to the submodule documentation are not reflected in the documentation 
# site until make is run

.PHONY: docs sidebars

all: pull docs sidebars

run:
	yarn start

docs:
	@echo Importing docs to ./docs
	./import.pl ../product-docs/ThreatMapper/docs/docs/threatmapper docs/threatmapper --gh-link https://github.com/deepfence/ThreatMapper/edit/main/docs
	./import.pl ../product-docs/ThreatStryker-docs/docs/docs/threatstryker docs/threatstryker --gh-link https://github.com/deepfence/ThreatStryker-docs/edit/main/docs
	./import.pl ../product-docs/SecretScanner/docs/docs/secretscanner docs/secretscanner --gh-link https://github.com/deepfence/SecretScanner/edit/main/docs
	./import.pl ../product-docs/PacketStreamer/docs/docs/packetstreamer docs/packetstreamer --gh-link https://github.com/deepfence/PacketStreamer/edit/main/docs
	./import.pl ../product-docs/FlowMeter/docs/docs/flowmeter docs/flowmeter --gh-link https://github.com/deepfence/FlowMeter/edit/main/docs
	./import.pl ../product-docs/YaRadare/docs/docs/yaradare docs/yaradare --gh-link https://github.com/deepfence/YaRadare/edit/main/docs


sidebars: 
	@echo Copying sidebars to ./sidebars
	cp ../product-docs/ThreatMapper/docs/sidebars.js       sidebars/threatmapper.js
	cp ../product-docs/ThreatStryker-docs/docs/sidebars.js sidebars/threatstryker.js
	cp ../product-docs/SecretScanner/docs/sidebars.js      sidebars/secretscanner.js
	cp ../product-docs/PacketStreamer/docs/sidebars.js     sidebars/packetstreamer.js
	cp ../product-docs/FlowMeter/docs/sidebars.js          sidebars/flowmeter.js
	cp ../product-docs/YaRadare/docs/sidebars.js           sidebars/yaradare.js

pull:
	git submodule update --remote

clean:
	-@rm sidebars/*.js
	-@rm -rf docs/*