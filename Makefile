PREFIX=/usr/local

all: install

install:
	mkdir -p $(PREFIX)/bin/ || true
	mkdir -p $(PREFIX)/lib/phpfetch/ || true
	
	install phpfetch $(PREFIX)/bin/phpfetch
	install logo.txt $(PREFIX)/lib/phpfetch/logo.txt
	sed -i 's|logo.txt|$(PREFIX)/lib/phpfetch/logo.txt|g' $(PREFIX)/bin/phpfetch
