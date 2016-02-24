CLFAGS= -Ofast -mfpu=neon-vfpv4 -funroll-loops -pthread -D WITH_RTL -I.
LDLIBS= -lm -pthread  -lrtlsdr

acarsdec:	acarsdec.o acars.o msk.o rtl.o air.o output.o alsa.o
	$(CC) acarsdec.o acars.o msk.o rtl.o air.o output.o alsa.o -o $@ $(LDLIBS)

acarsserv:	acarsserv.o dbmgn.o
	$(CC) -Ofast acarsserv.o dbmgn.o -o $@ -lsqlite3

acarsdec.o:	acarsdec.c acarsdec.h
acars.o:	acars.c acarsdec.h syndrom.h
msk.o:	msk.c acarsdec.h
output.o:	output.c acarsdec.h
rtl.o:	rtl.c acarsdec.h
acarsserv.o:	acarsserv.h
dbmgm.o:	acarsserv.h

clean:
	@rm *.o acarsdec acarsserv
