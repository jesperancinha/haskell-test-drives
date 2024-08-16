include Makefile.mk

install:
	 sudo apt-get update; \
 	 sudo apt install ghc cabal-install
build-all: clean-all
	ls functors/*.hs | xargs -I {} ghc {}
