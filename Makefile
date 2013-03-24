build:
	$(CC) -c crc32.c -o crc32.o
	$(CC) -c mkimage.c -o mkimage.o
	$(CC) -o mkheader *.o

clean:
	rm -f mkheader *.o

install:
	install -d $(DESTDIR)/usr/bin
	install -s mkimage $(DESTDIR)/usr/bin