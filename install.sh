#!/bin/sh

cd $(dirname $0)

which txt2tags &> /dev/null
retval=$?
if [ $retval -eq 0 ]; then
        cd man
        txt2tags xdgmenumaker.t2t
        cd ..
else
        echo "WARNING: txt2tags is not installed. The xdgmenumaker manpage will not be created."
fi

install -d -m 755 $DESTDIR/usr/bin
install -d -m 755 $DESTDIR/usr/share/desktop-directories
install -m 755 src/xdgmenumaker $DESTDIR/usr/bin/
install -m 644 desktop-directories/* $DESTDIR/usr/share/desktop-directories

if [ -f man/xdgmenumaker.man ]; then
	install -d -m 755 $DESTDIR/usr/share/man/man1
	install -m 644 man/xdgmenumaker.man $DESTDIR/usr/share/man/man1/xdgmenumaker.1
fi

