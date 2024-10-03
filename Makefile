include Makefile.mk

build-all: clean-all
	ls functors/*.hs | xargs -I {} ghc {}

install:
	 sudo apt-get update; \
 	 sudo apt install ghc cabal-install
