DESTDIR=/

all: install

install:
	mkdir -p $(DESTDIR)/usr/bin/ || true
	mkdir -p $(DESTDIR)/usr/lib/phpfetch/ || true
	
	install phpfetch $(DESTDIR)/usr/bin/phpfetch
	install logo.txt $(DESTDIR)/usr/lib/phpfetch/logo.txt
	sed -i 's|logo.txt|/usr/lib/phpfetch/logo.txt|g' $(DESTDIR)/usr/bin/phpfetch