SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR= /etc/skel
ICON_GDM= /var/lib/AccountsService/icons
THEME= $(wildcard theme/*)
ICON= $(wildcard .face)

install:
	install -dm755 $(DESTDIR)$(ICON_DIR)
	install -m644 $(ICON) $(DESTDIR)$(ICON_DIR)
	install -dm755 $(DESTDIR)$(ICON_GDM)
	install -m644 $(ICON) $(DESTDIR)$(ICON_GDM)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)
	mv -f $(DESTDIR)$(ICON_GDM)/$(ICON) $(DESTDIR)$(ICON_GDM)/manjaro

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR)/.face
	rm -Rf $(DESTDIR)$(THEME_DIR)
	rm -f $(DESTDIR)$(ICON_GDM)/manjaro

.PHONY: install uninstall