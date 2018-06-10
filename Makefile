SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR= /etc/skel
REPODIR=$(CURDIR)
THEME=$(wildcard theme/*)
INSTD= install -m644

install:
	install -dm755 $(DESTDIR)$(ICON_DIR)
	install -m644 $(DESTDIR)$(ICON_DIR)
	cp .face $(DESTDIR)$(ICON_DIR)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR)/.face
	rm -Rf $(DESTDIR)$(THEME_DIR)

.PHONY: install uninstall