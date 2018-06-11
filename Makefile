SHELL = /bin/bash
PREFIX= /usr
THEME_DIR= $(PREFIX)/share/themes/manjaro-gdm-theme
ICON_DIR= /etc/skel
THEME= $(wildcard theme/*)
ICON= $(wildcard .face)
CHECK_ICON= $(wildcard *.png)
CHECK_BIN= $(wildcard check-theme)
CHECK_DESK= $(wildcard *.desktop)

install:
	install -dm755 $(DESTDIR)$(ICON_DIR)
	install -m644 $(ICON) $(DESTDIR)$(ICON_DIR)
	install -dm755 $(DESTDIR)$(THEME_DIR)
	install -m644 $(THEME) $(DESTDIR)$(THEME_DIR)
	install -dm644 $(CHECK_ICON) $(DESTDIR)$(PREFIX)/share/icons/hicolor/40x40/status/$(CHECK_ICON)
	install -dm755 $(CHECK_BIN) $(DESTDIR)$(PREFIX)/bin/$(CHECK_BIN)
	install -dm644 $(CHECK_DESK) $(DESTDIR)/etc/xdg/autostart/$(CHECK_DESK)

uninstall:
	rm -f $(DESTDIR)$(ICON_DIR)/.face
	rm -Rf $(DESTDIR)$(THEME_DIR)
	rm -f $(DESTDIR)/etc/xdg/autostart/$(CHECK_DESK)
	rm -f $(DESTDIR)$(PREFIX)/bin/$(CHECK_BIN)
	rm -f $(DESTDIR)$(PREFIX)/share/icons/hicolor/40x40/status/$(CHECK_ICON)

.PHONY: install uninstall