MM ?= ../src/xdgmenumaker

test: clean generate
	@for i in `ls menus_correct/`; do \
		diff menus_correct/$$i menus_test/$$i 2>&1 > /dev/null && \
			echo "PASS: $$i" \
		|| \
			echo "FAIL: $$i"; \
	done

generate:
	mkdir -p menus_test
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f fluxbox > menus_test/fluxbox_en
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f fluxbox -i > menus_test/fluxbox_icons_en
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f fluxbox -i -s 48 > menus_test/fluxbox_icons48_en
	XDGMENUMAKER_TEST=1 LANG=el_GR.utf8 \
		$(MM) -f fluxbox > menus_test/fluxbox_el
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f fluxbox -n > menus_test/fluxbox_nosubmenu_en
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f icewm > menus_test/icewm_en
	XDGMENUMAKER_TEST=1 LANG=de_DE.utf8 \
		$(MM) -f icewm > menus_test/icewm_de
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f jwm > menus_test/jwm_en
	XDGMENUMAKER_TEST=1 LANG=fr_FR.utf8 \
		$(MM) -f jwm > menus_test/jwm_fr
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f pekwm > menus_test/pekwm_en
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f pekwm --pekwm-dynamic > menus_test/pekwm_dynamic_en
	XDGMENUMAKER_TEST=1 LANG=en_US.utf8 \
		$(MM) -f windowmaker > menus_test/windowmaker_en

clean:
	rm -rf menus_test

.PHONY: test generate clean
