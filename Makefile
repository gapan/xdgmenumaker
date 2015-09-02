PREFIX ?= /usr/local
DESTDIR ?= /

man:
	@echo "Generating manpage..."
	@txt2tags -o man/xdgmenumaker.1 man/xdgmenumaker.t2t || \
		echo "WARNING: txt2tags is not installed. The xdgmenumaker manpage will not be created."

install:
	install -d -m 755 $(DESTDIR)/$(PREFIX)/bin
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/desktop-directories
	install -m 755 src/xdgmenumaker $(DESTDIR)/$(PREFIX)/bin/
	install -m 644 desktop-directories/* $(DESTDIR)/$(PREFIX)/share/desktop-directories
	if [ -f man/xdgmenumaker.1 ]; then \
		install -d -m 755 $(DESTDIR)/$(PREFIX)/share/man/man1; \
		install -m 644 man/xdgmenumaker.1 $(DESTDIR)/$(PREFIX)/share/man/man1/; \
	fi
	sed -i "s|^prefix = 'not_set'|prefix = '$(PREFIX)'|" $(DESTDIR)/$(PREFIX)/bin/xdgmenumaker

clean: test-clean
	rm -f man/xdgmenumaker.1

test:
	$(MAKE) -C tests/

test-clean:
	$(MAKE) clean -C tests/

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/bin/xdgmenumaker
	rm -f $(DESTDIR)/$(PREFIX)/share/desktop-directories/xdgmenumaker*

.PHONY: man clean install uninstall test test-clean
