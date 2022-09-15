#!/bin/sh
git pull --rebase
git clean -fdxf
./autogen.sh && ./configure --with-tcl=/opt/homebrew/opt/tcl-tk/lib --with-tk=/opt/homebrew/opt/tcl-tk/lib GTK_MAC_CFLAGS="$(pkg-config gtk-mac-integration --cflags)" GTK_MAC_LIBS="$(pkg-config gtk-mac-integration --libs)" && make -j && make install
