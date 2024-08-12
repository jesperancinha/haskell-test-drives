install:
	 sudo apt-get update; \
 	 sudo apt install ghc cabal-install
clean-all:
	ls -I '*.*' functors | xargs -I {} rm functors/{}
	ls functors/*.o | xargs -I {} rm {}
	ls functors/*.hi | xargs -I {} rm {}
build-all: clean-all
	ls functors/*.hs | xargs -I {} ghc {}
