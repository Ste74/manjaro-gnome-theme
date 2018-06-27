SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR= /etc/skel
ICON_GDM= /var/lib/AccountsService/icons
THEME= $(wildcard theme/*)
ICON_SKEL= $(wildcard .face)
ICON_MJO= $(wildcard manjaro)

install:
	install -dm755 $(DESTDIR)$(ICON_DIR)
	install -m644 $(ICON_SKEL) $(DESTDIR)$(ICON_DIR)
	install -dm755 $(DESTDIR)$(ICON_GDM)
	install -m644 $(ICON_MJO) $(DESTDIR)$(ICON_GDM)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR)/$(ICON_SKEL)
	rm -Rf $(DESTDIR)$(THEME_DIR)
	rm -f $(DESTDIR)$(ICON_GDM)/$(ICON_MJO)

.PHONY: install uninstall