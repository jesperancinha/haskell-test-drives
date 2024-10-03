include Makefile.mk

build-all: clean-all
	ls functors/*.hs | xargs -I {} ghc {}
install:
	 sudo apt-get update; \
 	 sudo apt install ghc cabal-install
deps-plugins-update:
	curl -sL https://raw.githubusercontent.com/jesperancinha/project-signer/master/pluginUpdatesOne.sh | bash -s -- $(PARAMS)
deps-quick-update: deps-plugins-update
accept-prs:
	curl -sL https://raw.githubusercontent.com/jesperancinha/project-signer/master/acceptPR.sh | bash

