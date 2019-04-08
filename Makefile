SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR_USER= /etc/skel
THEME= $(wildcard theme/*.svg) \
	   $(wildcard theme/*.png) \
	   $(wildcard theme/*.css) \
	   $(wildcard theme/*.gresource) \
	   $(wildcard theme/*.xml)
THEME_ICON= $(wildcard theme/icons/*)
ICON_USER= $(wildcard .face)

install:
	install -dm755 $(DESTDIR)$(ICON_DIR_USER)
	install -m644 $(ICON_USER) $(DESTDIR)$(ICON_DIR_USER)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME_ICON) $(DESTDIR)$(THEME_DIR)/icons

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR_USER)/$(ICON_SKEL)
	rm -Rf $(DESTDIR)$(THEME_DIR)

.PHONY: install uninstall
