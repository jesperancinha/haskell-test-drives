build-all: clean-all
	ls *.hs | xargs -I {} ghc {}

clean-all:
	ls -I '*.*' functors | grep -v "Makefile" | xargs -I {} rm functors/{}
	ls functors/*.o | xargs -I {} rm {}
	ls functors/*.hi | xargs -I {} rm {}