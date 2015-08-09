Installation
============

To install, just run:

    make

followed by:

    make install

as root. You can set DESTDIR to change the installation target and
PREFIX to set the installation prefix (default is /usr/local):

    make install DESTDIR=/my/custom/installation/target PREFIX=/usr

Uninstallation
==============

To remove, you can just:

    make uninstall

and you can also set DESTDIR and PREFIX accordingly.
