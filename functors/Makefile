include ../Makefile.mk
clean-all:
	ls -I '*.*' | grep -v "Makefile" |  xargs -I {} rm {}
	ls *.o | xargs -I {} rm {}
	ls *.hi | xargs -I {} rm {}
