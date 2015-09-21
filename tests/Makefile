MM ?= ../src/xdgmenumaker
PYTHON ?= python

test: clean generate
	@for i in `ls menus_correct/`; do \
		diff menus_correct/$$i menus_test/$$i 2>&1 > /dev/null && \
			echo "PASS: $$i" \
		|| \
			echo "FAIL: $$i"; \
	done

generate:
	mkdir -p menus_test
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f blackbox > menus_test/blackbox
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f compizboxmenu > menus_test/compizboxmenu
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -if compizboxmenu > menus_test/compizboxmenu_icons
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f fluxbox > menus_test/fluxbox
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f fluxbox -i > menus_test/fluxbox_icons
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f fluxbox -i -s 48 > menus_test/fluxbox_icons48
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=el_GR.utf8 \
		$(PYTHON) $(MM) -f fluxbox > menus_test/fluxbox_el
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f fluxbox -n > menus_test/fluxbox_nosubmenu
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f icewm > menus_test/icewm
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f icewm -i > menus_test/icewm_icons
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=de_DE.utf8 \
		$(PYTHON) $(MM) -f icewm > menus_test/icewm_de
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f jwm > menus_test/jwm
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f jwm -i > menus_test/jwm_icons
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=fr_FR.utf8 \
		$(PYTHON) $(MM) -f jwm > menus_test/jwm_fr
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f pekwm > menus_test/pekwm
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f pekwm -i > menus_test/pekwm_icons
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f pekwm --pekwm-dynamic > menus_test/pekwm_dynamic
	XDGMENUMAKER_TEST=1 XDGMENUMAKERTERM=xterm LANG=en_US.utf8 \
		$(PYTHON) $(MM) -f windowmaker > menus_test/windowmaker

clean:
	rm -rf menus_test

.PHONY: test generate clean
