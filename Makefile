SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR_USER= /etc/skel
THEME= $(wildcard theme/*)
ICON_USER= $(wildcard .face)

install:
	install -dm755 $(DESTDIR)$(ICON_DIR_USER)
	install -m644 $(ICON_USER) $(DESTDIR)$(ICON_DIR_USER)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR_USER)/$(ICON_SKEL)
	rm -Rf $(DESTDIR)$(THEME_DIR)

.PHONY: install uninstall