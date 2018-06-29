SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_GDM= /var/lib/AccountsService/icons
THEME= $(wildcard theme/*)
ICON_MJO= $(wildcard manjaro)

install:
	install -dm755 $(DESTDIR)$(ICON_GDM)
	install -m644 $(ICON_MJO) $(DESTDIR)$(ICON_GDM)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)

uninstall:
	rm -Rf $(DESTDIR)$(THEME_DIR)
	rm -f $(DESTDIR)$(ICON_GDM)/$(ICON_MJO)

.PHONY: install uninstall