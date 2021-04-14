PREFIX ?= /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 glados.gpg $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 glados-trusted $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	test ! -f glados-revoked || install -m0644 glados-revoked $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/glados{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

.PHONY: install uninstall
