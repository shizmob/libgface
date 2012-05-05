SOVERSION=1
VERSION=1.0.0
CFLAGS=--std=c99

all:
	gcc $(CFLAGS) -c -fPIC gface/gface.c -o gface/gface.o
	gcc $(CFLAGS) -shared -Wl,-soname,libgface.so.$(SOVERSION) -o libgface.so.$(VERSION) gface/gface.o

clean:
	rm -rf gface/gface.o libgface*
