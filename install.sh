#!/bin/sh

cd $(dirname $0)

install -d -m 755 $DESTDIR/usr/bin
install -d -m 755 $DESTDIR/usr/share/desktop-directories
install -m 755 src/xdgmenumaker $DESTDIR/usr/bin/
install -m 644 desktop-directories/* $DESTDIR/usr/share/desktop-directories

