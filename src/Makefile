SOVERSION=1
VERSION=1.0.0
CFLAGS=--std=c99
PREFIX=/usr

all:
	gcc $(CFLAGS) -c -fPIC gface/gface.c -o gface/gface.o
	gcc $(CFLAGS) -shared -Wl,-soname,libgface.so.$(SOVERSION) -o libgface.so.$(VERSION) gface/gface.o
	ar -cq libgface.a libgface.so.$(VERSION)

install:
	install -s -m 755 libgface.so.$(VERSION) $(PREFIX)/lib
	install -s -m 755 libgface.a $(PREFIX)/lib
	mkdir -m 755 -p $(PREFIX)/include/gface
	install -m 644 gface/gface.h $(PREFIX)/include/gface

clean:
	rm -rf gface/gface.o libgface*
